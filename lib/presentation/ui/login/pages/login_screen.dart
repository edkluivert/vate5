import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vate5/core/routes/app_routes.dart';

import '../../../../core/constants/app_dimen.dart';
import '../../../../core/widgets/shared/custom_button.dart';
import '../../../../core/widgets/shared/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              SizedBox(height: 10,),
              Center(child: Text('sign into your account', style: theme.textTheme.displaySmall,)),
              SizedBox(height: size.height/12,),
              CustomTextField(
                hint: 'First and last name',
              ),
              SizedBox(height: 30,),
              CustomTextField(
                hint: 'First and last name',
              ),

              SizedBox(height: 30,),
              Align(
                  alignment: Alignment.topRight,
                  child: Text('Forgot Password', style: theme.textTheme.titleSmall,)),
              SizedBox(height: 50,),
              CustomFilledButton(text: 'Register', click: (){
                Get.toNamed(AppRoutes.bottomNav);
              })

            ].reversed.toList(),
          ),
        ),
      ),
    );
  }
}
