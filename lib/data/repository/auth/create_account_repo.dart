import 'package:dio/dio.dart';

import '../../api/auth/create_account_api.dart';
import '../../model/auth_model/create_account_model.dart';
import '../../services/exceptions/api_exceptions.dart';

class CreateAccountRepo{

  final CreateAccountApi _accountApi = CreateAccountApi();

  Future<CreateAccountModel> createAccount({
    required String fullName,
    required String email,
    required String password,
    required String phoneNumber,
    required String confirmPassword,
    required String userName,
  }) async {
    try {
      final response = await _accountApi.createAccount(fullName: fullName,
          email: email, password: password, phoneNumber: phoneNumber,
          confirmPassword: confirmPassword, userName: userName);
      var result = CreateAccountModel.fromJson(response.data);
      return result;
    } on DioError catch (e) {

      final errorMessage = ApiExceptions.fromDioError(e).toString();
      throw errorMessage;
    }

  }



}