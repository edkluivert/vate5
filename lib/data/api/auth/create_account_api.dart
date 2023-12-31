
import 'package:dio/dio.dart';
import 'package:get/instance_manager.dart';

import '../../../core/constants/app_constants.dart';
import '../../services/base/api_service.dart';

class CreateAccountApi{

  final ApiService _apiService = Get.find();

  Future<Response> createAccount(
      {
        required String fullName,
        required String email,
        required String password,
        required String phoneNumber,
        required String confirmPassword,
        required String userName,
      }) async {
    try {
      Map<String, String> bodyParameters = <String, String>{
        'fullName': fullName,
        'username': userName,
        'email': email,
        'password': password,
        'confirmPassword': confirmPassword,
        'phoneNumber': phoneNumber,
      };

      final Response response =
      await _apiService.post(AppConstants.createAccountPath,
        data: bodyParameters,

      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

}