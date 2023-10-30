import 'package:flutter/material.dart';
import 'package:touch_ripple_effect/touch_ripple_effect.dart';
import 'package:vate5/core/config/app_color.dart';

class BeneficiaryCard extends StatelessWidget {
  const BeneficiaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
       child: Padding(
         padding: const EdgeInsets.all(10),
         child: Row(
           children: [
             CircleAvatar(
               radius: 30,
               backgroundColor: AppColor.accentColor,
               child: Text('A', style: theme.textTheme.titleSmall!.copyWith(
                 color: AppColor.lightGrey
               ),),
             ),
             const SizedBox(width: 30,),
             Text('hello there', style: theme.textTheme.titleSmall!.copyWith(
                 color: AppColor.lightGrey
             ),),

             const Spacer(),
             TouchRippleEffect(
               onTap: (){
                 Future.delayed(const Duration(seconds: 1)).then((value){
                   showModalBottomSheet(context: context,
                       isDismissible: false,
                       //isScrollControlled: true,
                       shape: const RoundedRectangleBorder(
                           borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(8),
                               topRight: Radius.circular(8)
                           )
                       ),
                       builder: (context)=>  SingleChildScrollView(child: Container())
                   );
                 });
               },
               child: Container(
                 width: 80,
                 decoration: BoxDecoration(
                   color: AppColor.greenPale,
                   borderRadius: BorderRadius.circular(30)
                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text('Add', style: theme.textTheme.headlineMedium!.copyWith(
                     fontSize: 12, color: Colors.white
                   ),),
                 ),
               ),
             )
           ],
         ),
       ),
    );
  }
}
