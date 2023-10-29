import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../config/app_color.dart';
import '../../config/app_text_style.dart';
import '../../constants/app_dimen.dart';


class CustomTextField extends StatelessWidget {
  final String? hint;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final GestureTapCallback? onTap;
  final bool isFilled;
  final Color? fillColor;
  final int? maxLines;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final String labelText;
  final bool readOnly;
  final TextStyle labelStyle;
  final TextStyle hintStyle;
  final bool allowPrefixIcon;
  final bool isFieldPriority;
  final Color borderColor;
  final bool showSuffix;
  final bool obscureText;
  final VoidCallback? obscureTap;
  final FormFieldSetter<String>? onSaved;


  const CustomTextField(
      {super.key, this.hint,
        this.controller,
        this.keyboardType,
        this.labelText = '',
        this.onTap,
        this.maxLines = 1,
        this.isFilled = true,
        this.fillColor = Colors.transparent,
        this.validator,
        this.onChanged,
        this.readOnly = false,
        this.onSaved,
        this.labelStyle =  const TextStyle(color: Color(0xFF808080), fontSize: 14, fontWeight: FontWeight.w400,), //display small
        this.hintStyle = const TextStyle(color: Color(0xFFFFFFFF), fontSize: 14, fontWeight: FontWeight.w400,),
        this.borderColor = const Color(0xFFFFFFFF),
        this.allowPrefixIcon = false,
        this.obscureText=true,
        this.isFieldPriority = false,
        this.showSuffix = false,
        this.obscureTap
      });
  static final AppTextStyle _textStyle = AppTextStyle.instance;


  @override
  Widget build(BuildContext context) {
    //var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
            visible: labelText.isNotEmpty,
            child: Text(labelText,style: labelStyle,)),
        Visibility(
            visible: labelText.isNotEmpty,
            child: SizedBox(height: size.height * 0.006,)),
        TextFormField(
          onSaved: onSaved,
          readOnly: readOnly,
          controller: controller,
          cursorColor: AppColor.secondaryColor,
          style: _textStyle.displaySmall,
          keyboardType: keyboardType,
          onTap: onTap,
          obscureText: showSuffix?obscureText:false,
          validator: validator,
          onChanged: onChanged,
          maxLines: maxLines,
          decoration: InputDecoration(

              prefixIcon: allowPrefixIcon
                  ?const Padding(
                padding: EdgeInsets.all(12),
                child: Icon(Icons.search, color: Colors.white,),
              ):null,
              //labelText: labelText,
              suffixIcon: showSuffix ?GestureDetector(
                  onTap: obscureTap,
                  child: obscureText ?Icon(Icons.visibility,color: AppColor.greyLight,):Icon(Icons.visibility_off,color: AppColor.greyLight))
                  :null,
              hintText: hint,
              hintStyle: hintStyle.copyWith(
                color: Colors.white.withOpacity(0.30)
              ),
              fillColor:  fillColor,
              filled: true,
              // labelStyle: _textStyle.displaySmall,
              enabledBorder: OutlineInputBorder(
                borderSide:  BorderSide(width: 1, color: borderColor.withOpacity(0.50)),
                borderRadius: BorderRadius.circular(buttonRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: borderColor.withOpacity(0.50)),
                borderRadius: BorderRadius.circular(buttonRadius),
              ),
              errorBorder: OutlineInputBorder(
                borderSide:  BorderSide(width: 1, color: AppColor.secondaryColor),
                borderRadius: BorderRadius.circular(buttonRadius),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide:  BorderSide(width: 1, color: AppColor.secondaryColor),
                borderRadius: BorderRadius.circular(buttonRadius),
              ),
              errorStyle: TextStyle(color: AppColor.secondaryColor),
              floatingLabelBehavior: FloatingLabelBehavior.always
          ),
        ),
      ],
    );
  }
}