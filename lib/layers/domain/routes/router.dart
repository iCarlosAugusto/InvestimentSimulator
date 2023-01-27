import 'package:go_router/go_router.dart';
import 'package:help_teacher/layers/domain/presentation/cdb_lci_compare/cdb_lci_compare.dart';
import 'package:help_teacher/layers/domain/presentation/compare_investiment/compare_investiment_page.dart';
import 'package:help_teacher/layers/domain/presentation/dashboard/dashboard.dart';
import 'package:help_teacher/layers/domain/presentation/home/home_page.dart';
import 'package:help_teacher/layers/domain/presentation/introdution/introdution.dart';
import 'package:help_teacher/layers/domain/presentation/investiment_simulator/investiment_simulator_page.dart';
import 'package:help_teacher/utils/global_contenxt.dart';

final router = GoRouter(
  navigatorKey: GlobalContext.navigatorKey,
  initialLocation: '/introdution',
  routes: [
    GoRoute(
      name: 'dashboard',
      path: '/dashboard',
      builder: (context, state) => Dashboard(questionsRecived: state.queryParams['questionsRecived'])
    ),
    GoRoute(
      name: 'introdution',
      path: '/introdution',
      builder: (context, state) => const Introdution(),
    ),

    GoRoute(
      name: 'cdbLciCompare',
      path: '/cdbLciCompare',
      builder: (context, state) => CdbLciCompare(),
    ),

    GoRoute(
      name: 'home',
      path: '/home',
      builder: (context, state) => HomePage(),
    ),

    GoRoute(
      name: 'investmentSimulator',
      path: '/investmentSimulator',
      builder: (context, state) => InvestimentSimulatorPage(),
    ),
    GoRoute(
      name: 'compareInvestiment',
      path: '/compareInvestiment',
      builder: (context, state) => const CompareInvestimentPage(),
    )
  ],
);