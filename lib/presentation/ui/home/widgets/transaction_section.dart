import 'package:flutter/material.dart';
import 'package:vate5/core/config/app_color.dart';
import 'package:vate5/core/constants/app_dimen.dart';
import 'package:vate5/presentation/ui/home/widgets/transaction_card.dart';

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
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.only(top: 30, left: defaultPadding, right: defaultPadding),
          children: [
            Text('All Transactions'),
            SizedBox(height: 30,),
            TransactionCard(),
          ],
        ),
      ),
    );
  }
}
