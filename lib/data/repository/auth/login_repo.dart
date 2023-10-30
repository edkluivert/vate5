import 'package:dio/dio.dart';
import 'package:vate5/data/api/auth/login_api.dart';

import '../../model/auth_model/create_account_model.dart';
import '../../services/exceptions/api_exceptions.dart';

class LoginRepo{

  final LoginApi _loginApi = LoginApi();

  Future<CreateAccountModel> loginAccount({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _loginApi.loginAccount(email: email, password: password,);
      var result = CreateAccountModel.fromJson(response.data);
      return result;
    } on DioError catch (e) {

      final errorMessage = ApiExceptions.fromDioError(e).toString();
      throw errorMessage;
    }

  }

}