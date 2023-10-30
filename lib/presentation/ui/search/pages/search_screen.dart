import 'package:flutter/material.dart';
import 'package:vate5/core/constants/app_dimen.dart';
import 'package:vate5/core/widgets/shared/custom_app_bar.dart';
import 'package:vate5/core/widgets/shared/custom_textfield.dart';
import 'package:vate5/presentation/ui/search/widgets/beneficiary_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
         appBar: CustomAppBar(),
         body: Padding(
           padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               CustomTextField(
                 allowPrefixIcon: true,
                 hint: 'Add beneficiary',
               ),
              SizedBox(
                height: size.height/4,
                child: ListView.builder(
                  shrinkWrap: true,
                 physics: BouncingScrollPhysics(),
                 itemCount: 10,
                 itemBuilder: (context, index){
                   return BeneficiaryCard();
                 },
                ),
              ),
               Text('Add beneficiary', style: theme.textTheme.displayMedium!.copyWith(
                 fontSize: 18
               ),),
               Expanded(
                 child: ListView.builder(
                   shrinkWrap: true,
                   physics: BouncingScrollPhysics(),
                   itemCount: 10,
                   itemBuilder: (context, index){
                     return BeneficiaryCard();
                   },
                 ),
               ),
             ],
           ),
         ),
    );
  }
}
