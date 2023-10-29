import 'package:flutter/material.dart';
import 'package:vate5/core/config/app_color.dart';
import 'package:touch_ripple_effect/touch_ripple_effect.dart';

class FundsActionBtn extends StatelessWidget {
  final String text;
  final VoidCallback click;
  const FundsActionBtn({super.key, required this.text, required this.click});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.sizeOf(context);
    return TouchRippleEffect(
      rippleColor: AppColor.secondaryColor.withOpacity(0.10),
      rippleDuration: const Duration(milliseconds: 70),
      onTap: click,
      child: Container(
        width: size.width,
         height: size.height/14,
         decoration: BoxDecoration(
           color: Colors.transparent,
           borderRadius: BorderRadius.circular(10),
           border: Border.all(
             color: AppColor.borderColor,
             width: 1
           )
         ),
        child: Center(
          child: Text(text, style: theme.textTheme.headlineSmall,),
        ),
      ),
    );
  }
}
