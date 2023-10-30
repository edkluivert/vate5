import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vate5/data/repository/auth/create_account_repo.dart';
import 'package:vate5/presentation/controller/device_manager.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../core/routes/app_routes.dart';
import '../../core/widgets/shared/loading_overlay.dart';

class RegistrationController extends GetxController{


  final DeviceManager _deviceManager = Get.find();

  final GlobalKey<FormState> createAccountFormKey = GlobalKey<FormState>();

  final CreateAccountRepo _createAccountRepo = CreateAccountRepo();
  final LoadingOverlay _loadingOverlay = LoadingOverlay();

  late TextEditingController fullNameTextController , emailTextController, passwordTextController,
  confirmPasswordTextController, phoneNumberTextController, userNameTextController;

  var errorOccurred = ''.obs;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    fullNameTextController = TextEditingController();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    confirmPasswordTextController = TextEditingController();
    phoneNumberTextController = TextEditingController();
    userNameTextController = TextEditingController();


  }


  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();

    fullNameTextController.dispose();
    emailTextController.dispose();
    confirmPasswordTextController.dispose();
    passwordTextController.dispose();
    userNameTextController.dispose();
    phoneNumberTextController.dispose();

  }


  void createAccount(BuildContext context){

    _loadingOverlay.showOverLay(Get.overlayContext!);
    try{
      _createAccountRepo.createAccount(fullName: fullNameTextController.text, email: emailTextController.text,
          password: passwordTextController.text,
          phoneNumber: phoneNumberTextController.text,
          confirmPassword: confirmPasswordTextController.text, userName: userNameTextController.text).then((value) {

        _loadingOverlay.hideOverLay();

        if(value.token == null){
          Fluttertoast.showToast(msg: 'Error occurred');
        }

        Fluttertoast.showToast(msg: 'Success');

        if(value.message == 'User registered successfully'){

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

  String? validateFullName(String value){
    if(value.isEmpty){
      return 'Field is empty';
    }else{
      return null;
    }
  }

  String? validateUserName(String value){
    if(value.isEmpty){
      return 'Field is empty';
    }else{
      return null;
    }
  }

  String? validatePhoneNumber(String value){
    if(value.isEmpty){
      return 'Field is empty';
    }else if(value.length >= 11){
      return 'Field can not more than 11';
    }else{
      return null;
    }
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


  String? validateConfirmPassword(String value) {
    if (value != passwordTextController.text.toString()) {
      return "Password must be the same";
    }
    return null;
  }

}