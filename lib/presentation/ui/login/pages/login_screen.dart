import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vate5/core/routes/app_routes.dart';
import 'package:vate5/presentation/controller/login_controller.dart';

import '../../../../core/constants/app_dimen.dart';
import '../../../../core/widgets/shared/custom_button.dart';
import '../../../../core/widgets/shared/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});


  final LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding ),
          child: Form(
            key: loginController.loginAccountFormKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: ListView(
              shrinkWrap: true,
              reverse: true,
              physics: const BouncingScrollPhysics(),
              children: [

                SizedBox(height: size.height/7,),

                Center(child: Text('Welcome', style: theme.textTheme.displayMedium,)),
                const SizedBox(height: 10,),
                Center(child: Text('sign into your account', style: theme.textTheme.displaySmall,)),
                SizedBox(height: size.height/12,),
                CustomTextField(
                  hint: 'email',
                  controller: loginController.emailTextController,
                  validator: (value)=>loginController.validateEmail(value!),

                ),
                const SizedBox(height: 30,),
                CustomTextField(
                  hint: 'password',
                  controller: loginController.passwordTextController,
                  validator: (value)=>loginController.validatePassword(value!),
                ),

                const SizedBox(height: 30,),
                Align(
                    alignment: Alignment.topRight,
                    child: Text('Forgot Password', style: theme.textTheme.titleSmall,)),
                const SizedBox(height: 50,),
                CustomFilledButton(text: 'Register', click: (){
                  if (loginController.loginAccountFormKey.currentState!
                      .validate()) {
                    loginController.loginAccount(context);
                    loginController.loginAccountFormKey.currentState!.save();
                  }
                })

              ].reversed.toList(),
            ),
          ),
        ),
      ),
    );
  }
}
