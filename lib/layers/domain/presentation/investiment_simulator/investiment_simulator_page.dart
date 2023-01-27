import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:help_teacher/components/appbar_widget.dart';
import 'package:help_teacher/components/button_widget.dart';
import 'package:help_teacher/components/textfield_widget.dart';
import 'package:help_teacher/layers/domain/presentation/investiment_simulator/investiment_simulator_controller.dart';

class InvestimentSimulatorPage extends StatelessWidget {
  InvestimentSimulatorPage({super.key});

  List<String> options = ['CDB', 'LCI/LCA', 'Tesouro Direto', 'IPCA+'];

  List<String> optionsCDB = [
    'Pós-fixado',
    'Pré-fixado',
  ];

  InvestimentSimulatorController investimentSimulatorController = InvestimentSimulatorController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const Text('Simular investimento em renda fixa'),
              Observer(builder: (_) {
                return ChipsChoice<int>.single(
                  padding: const EdgeInsets.only(bottom: 0),
                  value: investimentSimulatorController.currentInvestimentTypeChoice,
                  onChanged: (val) => investimentSimulatorController.handleChangeInvestimentTypeChoice(val),
                  choiceItems: C2Choice.listFrom<int, String>(
                    source: options,
                    value: (i, v) => i,
                    label: (i, v) => v,
                  ),
                );
              }),
              Observer(builder: (_) {
                return Visibility(
                  visible: investimentSimulatorController.currentInvestimentTypeChoice == 0,
                  child: ChipsChoice<int>.single(
                    value: investimentSimulatorController.currentCDBType,
                    onChanged: (val) => investimentSimulatorController.handleChangeCDBType(val),
                    choiceItems: C2Choice.listFrom<int, String>(
                      source: optionsCDB,
                      value: (i, v) => i,
                      label: (i, v) => v,
                    ),
                  ),
                );
              }),
              TextFieldComponent(
                  label: 'Porcentagem do CDI',
                  suffixIcon: const Icon(Icons.percent),
                  keyboardType: TextInputType.number,
                  controller: investimentSimulatorController.cdiPercentTextFieldController),
              TextFieldComponent(
                  label: 'Redimento sobre o CDI',
                  padding: const EdgeInsets.only(top: 16),
                  keyboardType: TextInputType.number,
                  controller: investimentSimulatorController.yieldCDITextFieldController),
              Observer(builder: (_) {
                return TextFieldComponent(
                  label: 'Período',
                  padding: const EdgeInsets.only(top: 16),
                  keyboardType: TextInputType.number,
                  controller: investimentSimulatorController.periodMountTextFieldController,
                  dropDownList: const ['Meses', 'Anos'],
                  dropDownValue: investimentSimulatorController.periodTime,
                  onChangeDropDown: (value) => investimentSimulatorController.handleChanegPeriodTime(value),
                );
              }),
              TextFieldComponent(
                  label: 'Deposito inicial',
                  padding: const EdgeInsets.only(top: 16),
                  keyboardType: TextInputType.number,
                  controller: investimentSimulatorController.initialDepositTextFieldController),
              ButtonWidget(
                  padding: const EdgeInsets.only(top: 16),
                  value: 'Simular',
                  onPressed: investimentSimulatorController.simulate)
            ],
          ),
        ),
      )),
    );
  }
}
