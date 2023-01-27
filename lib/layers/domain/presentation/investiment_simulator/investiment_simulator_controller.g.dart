// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investiment_simulator_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$InvestimentSimulatorController
    on _InvestimentSimulatorControllerBase, Store {
  late final _$currentInvestimentTypeChoiceAtom = Atom(
      name: '_InvestimentSimulatorControllerBase.currentInvestimentTypeChoice',
      context: context);

  @override
  int get currentInvestimentTypeChoice {
    _$currentInvestimentTypeChoiceAtom.reportRead();
    return super.currentInvestimentTypeChoice;
  }

  @override
  set currentInvestimentTypeChoice(int value) {
    _$currentInvestimentTypeChoiceAtom
        .reportWrite(value, super.currentInvestimentTypeChoice, () {
      super.currentInvestimentTypeChoice = value;
    });
  }

  late final _$currentCDBTypeAtom = Atom(
      name: '_InvestimentSimulatorControllerBase.currentCDBType',
      context: context);

  @override
  int get currentCDBType {
    _$currentCDBTypeAtom.reportRead();
    return super.currentCDBType;
  }

  @override
  set currentCDBType(int value) {
    _$currentCDBTypeAtom.reportWrite(value, super.currentCDBType, () {
      super.currentCDBType = value;
    });
  }

  late final _$periodTimeAtom = Atom(
      name: '_InvestimentSimulatorControllerBase.periodTime', context: context);

  @override
  String get periodTime {
    _$periodTimeAtom.reportRead();
    return super.periodTime;
  }

  @override
  set periodTime(String value) {
    _$periodTimeAtom.reportWrite(value, super.periodTime, () {
      super.periodTime = value;
    });
  }

  late final _$_InvestimentSimulatorControllerBaseActionController =
      ActionController(
          name: '_InvestimentSimulatorControllerBase', context: context);

  @override
  dynamic handleChangeInvestimentTypeChoice(int index) {
    final _$actionInfo =
        _$_InvestimentSimulatorControllerBaseActionController.startAction(
            name:
                '_InvestimentSimulatorControllerBase.handleChangeInvestimentTypeChoice');
    try {
      return super.handleChangeInvestimentTypeChoice(index);
    } finally {
      _$_InvestimentSimulatorControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  dynamic handleChangeCDBType(int index) {
    final _$actionInfo =
        _$_InvestimentSimulatorControllerBaseActionController.startAction(
            name: '_InvestimentSimulatorControllerBase.handleChangeCDBType');
    try {
      return super.handleChangeCDBType(index);
    } finally {
      _$_InvestimentSimulatorControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  dynamic handleChanegPeriodTime(String? period) {
    final _$actionInfo =
        _$_InvestimentSimulatorControllerBaseActionController.startAction(
            name: '_InvestimentSimulatorControllerBase.handleChanegPeriodTime');
    try {
      return super.handleChanegPeriodTime(period);
    } finally {
      _$_InvestimentSimulatorControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentInvestimentTypeChoice: ${currentInvestimentTypeChoice},
currentCDBType: ${currentCDBType},
periodTime: ${periodTime}
    ''';
  }
}
