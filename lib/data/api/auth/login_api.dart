
import 'package:dio/dio.dart';
import 'package:get/instance_manager.dart';

import '../../../core/constants/app_constants.dart';
import '../../services/base/api_service.dart';

class LoginApi{

  final ApiService _apiService = Get.find();

  Future<Response> loginAccount(
      {
        required String email,
        required String password,
      }) async {
    try {
      Map<String, String> bodyParameters = <String, String>{
        'email': email,
        'password': password,
      };

      final Response response =
      await _apiService.post(AppConstants.loginAccountPath,
        data: bodyParameters,

      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

}