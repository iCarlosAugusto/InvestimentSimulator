import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:help_teacher/utils/global_contenxt.dart';
import 'package:mobx/mobx.dart';
part 'investiment_simulator_controller.g.dart';

class InvestimentSimulatorController = _InvestimentSimulatorControllerBase
    with _$InvestimentSimulatorController;

abstract class _InvestimentSimulatorControllerBase with Store {
  TextEditingController cdiPercentTextFieldController = TextEditingController();
  TextEditingController periodMountTextFieldController = TextEditingController();
  TextEditingController initialDepositTextFieldController = TextEditingController();
  TextEditingController yieldCDITextFieldController = TextEditingController();

  late double bruteResult;

  @observable
  int currentInvestimentTypeChoice = 0;

  @observable
  int currentCDBType = 0;

  @observable
  String periodTime = 'Anos';

  @action
  handleChangeInvestimentTypeChoice(int index) {
    currentInvestimentTypeChoice = index;
  }

  @action
  handleChangeCDBType(int index) {
    currentCDBType = index;
  }

  @action
  handleChanegPeriodTime(String? period) {
    if (period != null) {
      periodTime = period;
    }
  }

  simulate() {

    //double cdiPercent = double.parse(cdiPercentTextFieldController.text);
    //double yieldCDI = double.parse(yieldCDITextFieldController.text);
    //double deposit = double.parse(initialDepositTextFieldController.text);
    //double period = double.parse(periodMountTextFieldController.text);
//
    //var res = (cdiPercent / 100) * (yieldCDI / 100);
    //var res2 = res * 100;
    //double yieldPerYear = double.parse((res2).toStringAsFixed(2));
//
    //var res3 = deposit * (1 + yieldPerYear / 100);
    //if (periodTime == 'Anos') {
    //  bruteResult = pow(res3, period).toDouble();
    //}
//
    //if (periodTime == 'Meses') {
    //  var mouths = period / 12;
    //  var resPow = pow((1 + yieldPerYear / 100), mouths);
    //  bruteResult = resPow * 1000;
    //}
    FocusNode().dispose();

    showModalBottomSheet(
        context: GlobalContext.navigatorKey.currentContext!,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.money),
                title: const Text("Rendimento bruto: R\$ 1000"),//Text("Rendimento bruto: R\$ $bruteResult"),
                trailing: IconButton(onPressed: () {

                }, icon: Icon(Icons.question_mark)),
              ),
              const ListTile(
                leading: Icon(Icons.money),
                title: Text("Rendimento liquido: R\$ 1200"),
              ),

              const ListTile(
                leading: Icon(Icons.money),
                title: Text("Lucro: R\$ 1200"),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                  
                  onPressed: () {
                    context.pushNamed('compareInvestiment');
                  }, child: 
                Text('Comparar com outros investimentos')),
              ),
            ],
          );
        });
  }
}
