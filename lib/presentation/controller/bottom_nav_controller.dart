import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController{
  var tabIndex = 0;

  DateTime preBackPress = DateTime.now();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

  }


  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();

  }



  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }

  Future<bool> onWillPop(BuildContext context) async {
    final timeGap = DateTime.now().difference(preBackPress);
    final cantExit = timeGap >= const Duration(seconds: 2);
    preBackPress = DateTime.now();
    if (cantExit) {
      const snack = SnackBar(
        content: Text('Press Back button again to Exit'),
        duration: Duration(seconds: 2),
      );
      ScaffoldMessenger.of(context).showSnackBar(snack);
      return Future.value(false);
    }
    return Future.value(true);
  }
}