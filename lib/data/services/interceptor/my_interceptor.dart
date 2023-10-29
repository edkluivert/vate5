
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../presentation/controller/device_manager.dart';



class RefreshTokenInterceptor extends Interceptor {
  final Dio dio;
  final DeviceManager _deviceManager = Get.find();


  RefreshTokenInterceptor({
    required this.dio,
  });


  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      print('Applying authorization.......');
    }
    // Check if the request requires authorization
    if (options.headers.containsKey('Authorization-Required') &&
        options.headers['Authorization-Required'] == true) {

      // Get the access token from the DeviceManager
      final accessToken = _deviceManager.getAccessToken().toString();


      // Include the Bearer token in the "Authorization" header
      options.headers['Authorization'] = 'Bearer $accessToken';
    }

    handler.next(options);

  }


  // Future<String> getNewToken() async {
  //   if (kDebugMode) {
  //     print('Refreshing token now............');
  //   }
  //
  //   final value = _deviceManager.getAccessToken();
  //
  //   final response = await RefreshTokenRepo().refreshToken(userID: value!);
  //
  //   // Check if the response indicates a failure.
  //   if (response.message! == 'error') {
  //     throw DioError(
  //         requestOptions: RequestOptions(path: ''),
  //         error: 'An error occurred, please try again',
  //         type: DioErrorType.response
  //     );
  //   }
  //
  //   // If the response doesn't indicate a failure, return the new token.
  //   // save new token if not empty
  //
  //   if(response.data!.token!.isNotEmpty){
  //     _deviceManager.saveAccessToken(response.data!.token!.toString());
  //   }
  //
  //   return response.data!.token!;
  //
  // }

  /// so essentially what happens in the OnError function is that if we get a response
  /// with that particular description, we'll intercept it and call getNewToken, the getNewToken
  /// function will trigger and if it returns the same kind of error, the OnError triggers again and you get a loop.
  /// however  in practicality it will have a different response and if that response is also an error, we'll simply say 'error
  /// occurred, please try again' but if the response goes well, we'll get the new token and pass it to the header
  /// and then it will retry the previous response and give us a new message in the UI.


  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.data['description'] == 'Token expired') {
      if (kDebugMode) {
        print("Token expired. Attempting to refresh token and retry request...");
      }

      RequestOptions options = err.response?.requestOptions ?? RequestOptions(path: '');

      try {
        // If getNewToken() throws an exception, it will be caught here.
        //String newToken = await getNewToken();
        String newToken = 'hey';
        if (kDebugMode) {
          //print('hello $newToken');
        }
        options.headers["Authorization"] = "Bearer $newToken";
        //options.data['value'] = newToken.isNotEmpty ? 'hello' : 'hey';

        // Repeat the request with the new token.
        final response = await dio.fetch(options);
        handler.resolve(response);
      } catch (e) {
        // If getNewToken() failed or if new request with refreshed token failed, reject the error.
        if (kDebugMode) {
          print("Error occurred while attempting to refresh token or retrying request: $e");
        }
        handler.reject(DioError(
            requestOptions: options,
            error: 'An error occurred, please try again',
            type: DioErrorType.other
        ));
      }
    } else {
      handler.next(err);
    }
  }


  Future<String?> refreshToken() async {
    // call your refresh token api here
    if (kDebugMode) {
      print('refreshing the token now.............');
    }
    return 'hey';
  }


}
