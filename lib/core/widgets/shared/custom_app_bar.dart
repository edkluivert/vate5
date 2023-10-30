
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/app_color.dart';
import '../../config/app_text_style.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  @override
  final Size preferredSize;
  final String title;

  const CustomAppBar({ Key? key, this.title = ''}): preferredSize = const Size.fromHeight(64.0),
        super(key: key);

  static final AppTextStyle _textStyle = AppTextStyle.instance;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return AppBar(
      elevation: 0,
      shadowColor: Colors.transparent,
      centerTitle: true,
      leading: BackButton(
        color: AppColor.secondaryColor,
      ),
      title: Text(title, style: theme.textTheme.headlineMedium,),

    );
  }
}