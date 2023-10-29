import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vate5/core/config/app_color.dart';
import 'package:vate5/core/config/app_strings.dart';
import 'package:vate5/core/constants/app_dimen.dart';
import 'package:vate5/core/utils/image_ext.dart';
import 'package:vate5/presentation/ui/home/widgets/funds_action_btn.dart';
import 'package:vate5/presentation/ui/home/widgets/transaction_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.blue
                      ),
                      child: Center(
                        child: SvgPicture.asset(icMenu.svg),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Text('Hello USER', style: theme.textTheme.headlineMedium!.copyWith(
                      color: AppColor.secondaryColor.withOpacity(0.80)
                    ),)
                  ],
                ),
              ),
              const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Text('Your current balance is', style: theme.textTheme.titleSmall,),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Row(
                  children: [
                    SvgPicture.asset(icNaira.svg, color: Colors.white,),
                    Text('200,000', style: theme.textTheme.titleMedium,)
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Row(
                  children: [
                    Expanded(child: FundsActionBtn(text: 'Add Money', click: (){})),
                    const SizedBox(width: 20,),
                    Expanded(child: FundsActionBtn(text: 'Send Money', click: (){})),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              TransactionSection()

            ],
          ),
        ),
    );
  }
}
