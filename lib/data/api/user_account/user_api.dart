import 'package:dio/dio.dart';
import 'package:get/instance_manager.dart';

import '../../../core/constants/app_constants.dart';
import '../../services/base/api_service.dart';

class UserApi{


  final ApiService _apiService = Get.find();

  Future<Response> getUser() async {
    try {


      final Response response =
      await _apiService.get(AppConstants.userProfilePath,
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> fundAccount(
      {
        required String amount
      }) async {
    try {
      Map<String, String> bodyParameters = <String, String>{
        'amount': amount,
      };

      final Response response =
      await _apiService.post(AppConstants.fundAccountPath,
        data: bodyParameters,

      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> addBeneficiary(
      {
        required String phoneNumber
      }) async {
    try {
      Map<String, String> bodyParameters = <String, String>{
        'phoneNumber': phoneNumber,
      };

      final Response response =
      await _apiService.post(AppConstants.addBeneficiaryPath,
        data: bodyParameters,

      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

}