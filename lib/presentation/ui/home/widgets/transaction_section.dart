import 'package:flutter/material.dart';
import 'package:vate5/core/config/app_color.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: AppColor.blueDark,
          borderRadius: const BorderRadius.only(topRight: Radius.circular(40),
          topLeft: Radius.circular(40))
        ),
        child: ListView(
        //  shrinkWrap: true,
          children: [

          ],
        ),
      ),
    );
  }
}
