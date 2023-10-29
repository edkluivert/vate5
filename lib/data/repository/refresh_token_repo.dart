//
//
// class RefreshTokenRepo{
//
//   final RefreshTokenApi _refreshTokenApi = RefreshTokenApi();
//
//   Future<DefaultModel> refreshToken({
//     required String userID,
//   }) async {
//     try {
//       final response = await _refreshTokenApi.refreshApi(userID: userID);
//       var result = DefaultModel.fromJson(response.data);
//       return result;
//     } on DioError catch (e) {
//       final errorMessage = ApiExceptions.fromDioError(e).toString();
//       throw errorMessage;
//     }
//
//   }
//
// }
