import 'package:flutter/material.dart';

import '../../config/app_text_style.dart';
import '../../constants/app_dimen.dart';



class CustomFilledButton extends StatelessWidget {
  final String text;
  final VoidCallback? click;
  final Color? btnColor;
  final  double? btnRadius;
  final double elevation;
  final TextStyle? style;
  const CustomFilledButton({Key? key, required this.text, this.btnColor = const Color(0xFFFFFFFF),
    required this.click, this.btnRadius = buttonRadius,
    this.elevation = 0,  this.style
  }) : super(key: key);

  static final AppTextStyle _textStyle = AppTextStyle.instance;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.060,
      child: ElevatedButton(
        onPressed: click,
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          disabledForegroundColor: btnColor,
          disabledBackgroundColor: btnColor!.withOpacity(0.50),
          backgroundColor: btnColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(btnRadius!)
          ),
          fixedSize: Size(size.width, size.height * 0.060),
        ),
        child: Center(child: Text(text, style: style??_textStyle.headlineSmall,)),
      ),
    );
  }
}