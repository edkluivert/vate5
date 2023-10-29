import 'package:flutter/material.dart';


import 'app_color.dart';
import 'app_strings.dart';

class AppTextStyle {
  static AppTextStyle instance = AppTextStyle();


  /// On-boarding text style
  TextStyle displayLarge = TextStyle(
    color: AppColor.onboardTextColor,
    fontSize: 30,
    fontFamily: strPoppins,
    fontWeight: FontWeight.w500,
  );

  /// Auth Title
  TextStyle displayMedium = TextStyle(
    color: Colors.white.withOpacity(0.70),
    fontSize: 24,
    fontFamily: strPoppins,
    fontWeight: FontWeight.w700,

  );


  TextStyle displaySmall = TextStyle(
    color: Colors.white.withOpacity(0.70),
    fontSize: 14,
    fontFamily: strPoppins,
    fontWeight: FontWeight.w400,
  );

  /// t and c headline, accepted project text
  TextStyle headlineLarge = TextStyle(
    color: AppColor.grey,
    fontSize: 24,
    fontWeight: FontWeight.w600,

  );

  /// username
  TextStyle headlineMedium = TextStyle(
    color: AppColor.secondaryColor,
    fontSize: 20,
    fontFamily: strPoppins,
    fontWeight: FontWeight.w500,

  );

  /// funds action text
  TextStyle headlineSmall = TextStyle(
    color: AppColor.borderColor,
    fontSize: 15,
    fontFamily: strPoppins,
    fontWeight: FontWeight.w500,
  );


  /// save pref btn
  TextStyle titleLarge =  TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColor.primaryColor,
    fontSize: 18,

  );

  /// money
  TextStyle titleMedium = TextStyle(
    fontWeight: FontWeight.w700,
    fontFamily: strPoppins,
    color: AppColor.grey,
    fontSize: 40,
  );


  /// your current
  TextStyle titleSmall = TextStyle(
    color: AppColor.greyLight,
    fontSize: 12,
    fontFamily: strPoppins,
    fontWeight: FontWeight.w400,
  );

  /// Profile edit email text field
  TextStyle labelLarge =  TextStyle(
    color: AppColor.grey2,
    fontSize: 9,
    fontWeight: FontWeight.w400,

  );

  /// project info text sub title
  TextStyle labelMedium = TextStyle(
    color: AppColor.grey3,
    fontSize: 12,
    fontWeight: FontWeight.w500,

  );

  /// sign in with google  btn
  TextStyle labelSmall = TextStyle(
      color: AppColor.grey,
      fontSize: 12,
      fontWeight: FontWeight.w700,
      fontFamily: strPoppins
  );

  ///Request a project, payment history title
  TextStyle bodyLarge = TextStyle(
    color: AppColor.grey,
    fontSize: 18,
    fontWeight: FontWeight.w600,

  );

  /// Personal details, default payment and billing address, visa ending number
  TextStyle bodyMedium = TextStyle(
    color: AppColor.grey,
    fontSize: 16,
    fontWeight: FontWeight.w500,


  );

  /// recent update teg text ans recent update, file size, projects number and projects done,
  /// preferences title
  /// invoice document tye
  TextStyle bodySmall = TextStyle(
    color: AppColor.grey,
    fontSize: 10,
    fontWeight: FontWeight.w400,

  );

  /// forgot password and file containing invoice breakdown, edit in payment history card
  TextStyle forgotPassword = TextStyle(
    color: AppColor.secondaryColor,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  /// request project drop down hint
  TextStyle projectDropDownHint = TextStyle(
    color: AppColor.dropDownHintGrey,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );


  /// Back button text, billing details
  TextStyle backBtnText = TextStyle(
    color: AppColor.secondaryColor,
    fontSize: 16,
    fontFamily: strPoppins,
    fontWeight: FontWeight.w500,
  );
  /// resend text
  TextStyle resendText = TextStyle(
    color: AppColor.blue,
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );

  /// reset sub text, visa end date
  TextStyle resetSubText = TextStyle(
      color: AppColor.grey3,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: strPoppins
  );

  /// label text, t and c sub text, profile email in preferences, log out
  /// payment sub title, time in chat item, date in chat
  TextStyle navLabelText = TextStyle(
    color: AppColor.grey3,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  /// time on recent update card, project title info

  TextStyle timeOnRecentUpdate = TextStyle(
    color: AppColor.grey3,
    fontSize: 8,
    fontWeight: FontWeight.w400,
  );

  /// invoice sub title

  TextStyle invoiceSubTitle = TextStyle(
    color: AppColor.grey3,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  /// tab and profile data text
  TextStyle tabText = TextStyle(
      color: AppColor.grey4,
      fontSize: 16,
      fontWeight: FontWeight.w600
  );

  /// number in bubble
  TextStyle tabNumber = TextStyle(
      color: AppColor.primaryColor,
      fontSize: 10,
      fontWeight: FontWeight.w600
  );

  /// update text in payment and billing
  TextStyle update = TextStyle(
    color: AppColor.blue3,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  /// add billing and payment
  TextStyle addPB = TextStyle(
    color: AppColor.grey3,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  ///delivery method text
  TextStyle deliveryMtdText = TextStyle(
    color: AppColor.primaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  /// profile name in preferences
  TextStyle profileNameText =  TextStyle(
    color: AppColor.grey2,
    fontSize: 18,
    fontWeight: FontWeight.w500,

  );

  /// document drop down text item, chat item pop up menu
  TextStyle dropDownItemStyle =  TextStyle(
      color: AppColor.neutral700,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: strPoppins

  );

  /// snackbar
  TextStyle snackBarStyle =  TextStyle(
      color: AppColor.allGreen,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: strPoppins

  );

  /// chat last text item, payment  warning
  TextStyle lastTextStyle =  TextStyle(
      color: AppColor.grey3,
      fontSize: 12,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.italic

  );

  ///  view details
  TextStyle viewDetailsStyle =  TextStyle(
    color: AppColor.secondaryColor,
    fontSize: 12,
    fontWeight: FontWeight.w600,

  );

  ///  stepper title
  TextStyle stepperTitleStyle =  TextStyle(
      color: AppColor.neutral800,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      fontFamily: strPoppins
  );

  ///  stepper subtitle
  TextStyle stepperSubTitleStyle =  TextStyle(
      color: AppColor.neutral500,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      fontFamily : strPoppins

  );

}
