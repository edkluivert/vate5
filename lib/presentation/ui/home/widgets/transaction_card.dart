import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vate5/core/config/app_color.dart';
import 'package:vate5/core/utils/image_ext.dart';

import '../../../../core/config/app_strings.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var theme = Theme.of(context);
    return Container(
        width : size.width,
        decoration: BoxDecoration(
          color: AppColor.tranCardColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 10, top: 8, bottom: 8),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: AppColor.accentColor,
                child: Text('A'),

              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello'),
                  const SizedBox(height: 5),
                  Container(
                    width: 100,

                    decoration: BoxDecoration(
                      color: AppColor.greenPale,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Container(
                            width : 20,
                            height : 20,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle
                            ),
                            child: Center(child: SvgPicture.asset(icCredit.svg, width: 12, height: 12,)),
                          ),
                          const SizedBox(width: 10,),
                          Text('Received', style: theme.textTheme.titleSmall!.copyWith(
                            color: Colors.white
                          ),)

                        ],
                      ),
                    ),
                  )
                ],
              ),
              Spacer(),
              Row(
                children: [
                  SvgPicture.asset(icNaira.svg, color: AppColor.greenPale, width: 10, height: 10,),
                  Text('200,000', style: theme.textTheme.titleSmall!.copyWith(
                    color: AppColor.greenPale, fontWeight: FontWeight.w700
                  ),)
                ],
              )
            ],
          ),
        ),
    );
  }
}
