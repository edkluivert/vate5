import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vate5/core/constants/app_dimen.dart';
import 'package:vate5/core/routes/app_routes.dart';
import 'package:vate5/core/widgets/shared/custom_button.dart';
import 'package:vate5/core/widgets/shared/custom_textfield.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
         body: SafeArea(
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: defaultPadding ),
             child: ListView(
               shrinkWrap: true,
               reverse: true,
               physics: const BouncingScrollPhysics(),
               children: [

                 SizedBox(height: size.height/7,),

                 Center(child: Text('Welcome', style: theme.textTheme.displayMedium,)),

                 SizedBox(height: size.height/12,),
                 CustomTextField(
                   hint: 'First and last name',
                 ),
                 SizedBox(height: 30,),
                 CustomTextField(
                   hint: 'First and last name',
                 ),
                 SizedBox(height: 30,),
                 CustomTextField(
                   hint: 'First and last name',
                 ),
                 SizedBox(height: 30,),
                 CustomTextField(
                   hint: 'First and last name',
                 ),

                 SizedBox(height: 50,),
                 CustomFilledButton(text: 'Register', click: (){
                   Get.toNamed(AppRoutes.login);
                 }),
                 SizedBox(height: 50,),
                 Center(child: Text('By signing up, you agree to terms and conditions of Vate5',
                   style: theme.textTheme.displaySmall,))

               ].reversed.toList(),
             ),
           ),
         ),
    );
  }
}
