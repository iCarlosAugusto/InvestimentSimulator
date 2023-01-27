import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  PageController pageController = PageController();

  @observable
  var currentIndex = 0;

  @action
  increment() {
    currentIndex++;
  }

  handlePageChange(int index) {
    currentIndex = index;
  }

  handlePageChangeByTap(int index) {
    currentIndex = index;
    pageController.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
  }
}
