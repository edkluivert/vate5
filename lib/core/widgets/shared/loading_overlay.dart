// loading_overlay.dart
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/app_color.dart';
import '../../config/app_text_style.dart';


class LoadingOverlay  {

  static final AppTextStyle _textStyle = AppTextStyle.instance;

  late OverlayState overlayState;
  late OverlayEntry overlayEntry;

  void showOverLay(BuildContext context)async{
    overlayState = Overlay.of(context);
    overlayEntry = OverlayEntry(builder: (BuildContext context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Scaffold(
          backgroundColor: Colors.black.withOpacity(0.2),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: AppColor.accentColor,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: AppColor.primaryColor,

                    ),
                  ),
                  child: Center(
                    child: CircularProgressIndicator(
                      color: AppColor.secondaryColor,
                      backgroundColor: AppColor.primaryColor ,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      );

    });
    overlayState.insert(overlayEntry);
    //  showDialog(context: context, builder: (BuildContext context){
    //    return BackdropFilter(
    //      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
    //      child: Scaffold(
    //        backgroundColor: Colors.black.withOpacity(0.2),
    //        body: Column(
    //          mainAxisAlignment: MainAxisAlignment.center,
    //          children: [
    //            Center(
    //              child: Container(
    //                height: 60,
    //                width: 60,
    //                decoration: BoxDecoration(
    //                  color: AppColor.avatarBg,
    //                  borderRadius: BorderRadius.circular(5),
    //                  border: Border.all(
    //                    color: AppColor.primaryColor,
    //
    //                  ),
    //                ),
    //                child: Center(
    //                  child: CircularProgressIndicator(
    //                    color: AppColor.secondaryColor,
    //                    backgroundColor: AppColor.primaryColor ,
    //                  ),
    //                ),
    //              ),
    //            ),
    //
    //          ],
    //        ),
    //      ),
    //    );
    //});

    /// this line of code is optional as we can not time the requests

    //await Future.delayed(const Duration(seconds: 3)).then((value) => hideOverLay());
  }

  void hideOverLay()async{
    overlayEntry.remove();
    // Navigator.of(context, rootNavigator: true).pop();
  }

}