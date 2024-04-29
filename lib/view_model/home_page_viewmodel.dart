import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../view/home-screen.dart';

class HomePageViewmodel extends BaseViewModel{
  String onPage = 'HomePage';
Widget currentPage = HomeScreen();


  changePage(String value){
    onPage = value;
    notifyListeners();
  }




}