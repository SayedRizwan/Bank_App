// ignore_for_file: prefer_const_constructors

import 'package:bank_app/core/enums/view_state.dart';
import 'package:bank_app/core/others/view_model.dart';
import 'package:bank_app/ui/screens/debit/debit_screen.dart';
import 'package:bank_app/ui/screens/home/home_screen.dart';
import 'package:bank_app/ui/screens/transaction_history/transaction_history.dart';
import 'package:flutter/material.dart';

class RootViewModel extends BaseViewModel {
  final PageController pageController = PageController(initialPage: 0);
  RootViewModel(val) {
    updatedScreen(val);
    notifyListeners();
  }
  int selectedScreen = 0;
  // int selectIndex = 0;

  List<Widget> allScreen = [
    AccountService(),
    DebitScreen(),
    TransactionHistoryScreen()
  ];

  updatedScreen(int index) {
    setState(ViewState.busy);
    selectedScreen = index;
    setState(ViewState.idle);
    // selectIndex = index;
    notifyListeners();
  }

  // pushScreen(int index) {
  //   pageController.animateToPage(index,
  //       duration: Duration(milliseconds: 2000), curve: Curves.bounceIn);
  //   selectedScreen = index;
  //   notifyListeners();
  // }
}
