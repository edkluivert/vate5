import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';

mixin CacheManager {

  Future<bool> saveFirstOnBoard(String? onboard) async {
    final box = GetStorage();
    await box.write(CacheManagerKey.isFirstTimeOnBoard.toString(), onboard);
    return true;
  }

  String? getFirstOnBoard() {
    final box = GetStorage();
    return box.read(CacheManagerKey.isFirstTimeOnBoard.toString());
  }

  Future<void> removeFirstOnBoard() async {
    final box = GetStorage();
    await box.remove(CacheManagerKey.isFirstTimeOnBoard.toString());
  }

  Future<bool> saveAccessToken(String? accessToken) async {
    final box = GetStorage();
    await box.write(CacheManagerKey.accessToken.toString(), accessToken);
    return true;
  }

  String? getAccessToken() {
    final box = GetStorage();
    return box.read(CacheManagerKey.accessToken.toString());
  }

  Future<void> removeAccessToken() async {
    final box = GetStorage();
    await box.remove(CacheManagerKey.accessToken.toString());
  }


  /// This was a logic to reset accessToken after a period of time, i wanted to use it as the interceptor
  /// logic wasn't initially coming through.

  // Future<bool> saveAccessToken(String? accessToken) async {
  //   final box = GetStorage();
  //   await box.write(CacheManagerKey.accessToken.toString(), accessToken);
  //
  //   DateTime expirationTime = DateTime.now().add(const Duration(seconds: 20));
  //
  //   await box.write(CacheManagerKey.tokenTime.toString(), expirationTime.toIso8601String());
  //
  //   return true;
  // }
  //
  // String? getAccessToken() {
  //   final box = GetStorage();
  //   final accessToken = box.read(CacheManagerKey.accessToken.toString());
  //   final expirationTimeStr = box.read(CacheManagerKey.tokenTime.toString());
  //
  //   if (accessToken != null && expirationTimeStr != null) {
  //     final expirationTime = DateTime.parse(expirationTimeStr);
  //     if (DateTime.now().isBefore(expirationTime)) {
  //       return accessToken;
  //     } else {
  //       // Access token has expired, perform any required action here
  //       // For example, refresh the access token or log the user out.
  //       if (kDebugMode) {
  //         print('expired, token is expired');
  //       }
  //       // Remove the expired access token from the cache
  //        removeAccessToken();
  //      // saveAccessToken('Hey');
  //       return accessToken;
  //     }
  //   }
  //
  //   return null;
  // }
  //
  //
  // Future<void> removeAccessToken() async {
  //   final box = GetStorage();
  //   await box.remove(CacheManagerKey.accessToken.toString());
  // }


}

enum CacheManagerKey {accessToken, isFirstTimeOnBoard, tokenTime}
