import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:help_teacher/layers/domain/presentation/fixed_finance/fixed_finance_page.dart';
import 'package:help_teacher/layers/domain/presentation/home/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  HomeController homeController = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: homeController.pageController,
        onPageChanged: (int index) => homeController.handlePageChange(index),
        children: const [
          FixedFinancePage(),
          Center(child: Text('TESTE')),
          Center(child: Text('TESTE'))
        ],
      ),
      bottomNavigationBar: Observer(builder: (_) {
        return BottomNavigationBar(
          currentIndex: homeController.currentIndex,
          onTap: (value) => homeController.handlePageChangeByTap(value),
          items: const [
            BottomNavigationBarItem(label: 'Renda fixa', icon: Icon(Icons.monetization_on),),
            BottomNavigationBarItem(label: 'Renda variável', icon: Icon(Icons.money)),
            BottomNavigationBarItem(label: 'Configurações', icon: Icon(Icons.monitor_heart_sharp)),
          ],
        );
      }),
    );
  }
}
