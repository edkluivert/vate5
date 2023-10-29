

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../data/cache/cache_manager.dart';



class DeviceManager extends GetxController with CacheManager{





  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    //saveFirstOnBoard();

    if (kDebugMode) {
      getAccessToken();
      print(getAccessToken().toString());

    }



  }


  /// Initial save for the model

  // void addUserModel({
  //   required String email,
  //   required String userID
  // }){
  //
  //   final user = UserModel(userID,'firstname', 'lastname', email, 'password', 'country', 'dob', 'title', 'miniBio', 'postalAddress');
  //   userBox.put('userData', user);
  //   update();
  //
  // }


  ///  Updating an entire model
  //
  // void updateModel({
  //   required UserModel userModel
  // }){
  //   final user = userBox.containsKey('userData');
  //   if (user) {
  //
  //     userBox.put('userData', userModel);
  //
  //
  //   } else if (kDebugMode) {
  //     print('userData is not found');
  //   }
  // }
  //
  //
  // ///retrieving data from hive db model
  // Future<UserModel?>getDataFromUserModel() async {
  //   final user = userBox.get('userData');
  //   return user;
  //
  // }


  /// Updating a specific field in the model

  // void updateUserModel(
  //     {
  //       required String key,
  //       required String value
  //     }){
  //
  //   final updateUser = userBox.get('userData');
  //   if (updateUser != null) {
  //     var fields = {
  //       'userID' : () => updateUser.userID = value,
  //       'firstName': () => updateUser.firstName = value,
  //       'lastName': () => updateUser.lastName = value,
  //       'email': () => updateUser.email = value,
  //       'password': () => updateUser.password = value,
  //       'country': () => updateUser.country = value,
  //       'dob' : ()=> updateUser.dob = value,
  //       'title': () => updateUser.title = value,
  //       'miniBio': () => updateUser.miniBio = value,
  //       'postalAddress': () => updateUser.postalAddress = value,
  //     };
  //
  //     if (fields.containsKey(key)) {
  //       fields[key]!();
  //       updateUser.save();
  //     } else if (kDebugMode) {
  //       print('data is unspecified');
  //     }
  //   }
  //
  //
  // }




}
