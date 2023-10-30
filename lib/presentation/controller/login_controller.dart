import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:vate5/data/repository/auth/login_repo.dart';

import '../../core/widgets/shared/loading_overlay.dart';
import 'device_manager.dart';

class LoginController extends GetxController{

  final LoginRepo _loginRepo = LoginRepo();

  final DeviceManager _deviceManager = Get.find();

  final GlobalKey<FormState> loginAccountFormKey = GlobalKey<FormState>();

  var errorOccurred = ''.obs;

  late TextEditingController emailTextController, passwordTextController;
  final LoadingOverlay _loadingOverlay = LoadingOverlay();


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
  }



  void loginAccount(BuildContext context){

    _loadingOverlay.showOverLay(Get.overlayContext!);
    try{
      _loginRepo.loginAccount(email: emailTextController.text,
          password: passwordTextController.text).then((value) {

        _loadingOverlay.hideOverLay();

        if(value.token == null){
          Fluttertoast.showToast(msg: 'Error occurred');
        }

        Fluttertoast.showToast(msg: 'Success');

        if(value.message == 'User login successfully'){

          _deviceManager.saveAccessToken(value.token!);
          Future.delayed(const Duration(seconds: 2)).then((value) {

          });
        }

      }).onError((error, stackTrace) {
        errorOccurred.value = error.toString();
        _loadingOverlay.hideOverLay();
        Fluttertoast.showToast(msg: 'Error occurred');

      });
    }catch(e){
      errorOccurred.value = e.toString();
      _loadingOverlay.hideOverLay();
      Fluttertoast.showToast(msg: 'Error occurred');

    }

  }


  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    emailTextController.dispose();
    passwordTextController.dispose();

  }

  String? validateEmail(String value){
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  String? validatePassword(String value) {
    // Check if password is not empty
    if (value.isEmpty) {
      return "Password can not be empty";
    }

    // Check if password has at least one capital letter
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return "Password must contain at least one capital letter";
    }

    // Check if password has at least one special character
    if (!RegExp(r'[\W]').hasMatch(value)) {
      return "Password must contain at least one special character";
    }

    // Check if password has at least one number
    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return "Password must contain at least one number";
    }

    // Check if password has at least one letter
    if (!RegExp(r'[a-zA-Z]').hasMatch(value)) {
      return "Password must contain at least one letter";
    }

    // Check if password length is at least 8
    if (value.length < 8) {
      return "Password must be at least 8 characters long";
    }

    // If all conditions are met, return null
    return null;
  }

}
