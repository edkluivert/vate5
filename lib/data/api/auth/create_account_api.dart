
import 'package:dio/dio.dart';
import 'package:get/instance_manager.dart';

import '../../../core/constants/app_constants.dart';
import '../../services/base/api_service.dart';

class CreateAccountApi{

  final ApiService _apiService = Get.find();

  Future<Response> createAccount(
      {required String firstName,
        required String lastName,
        required String email,
        required String password,
        required String country,
        required String dob,
        required String title,
      }) async {
    try {
      Map<String, String> bodyParameters = <String, String>{
        'firstname': firstName,
        'lastname': lastName,
        'email': email,
        'password': password,
        'country': country,
        'dateOfBirth': dob,
        'title':title,
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