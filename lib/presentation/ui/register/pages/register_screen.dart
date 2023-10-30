import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vate5/core/constants/app_dimen.dart';
import 'package:vate5/core/routes/app_routes.dart';
import 'package:vate5/core/widgets/shared/custom_button.dart';
import 'package:vate5/core/widgets/shared/custom_textfield.dart';

import '../../../controller/registration_controller.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({super.key});

  final RegistrationController registrationController = Get.find();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
         body: SafeArea(
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: defaultPadding ),
             child: Form(
               key: registrationController.createAccountFormKey,
               autovalidateMode: AutovalidateMode.onUserInteraction,
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
                     controller: registrationController.fullNameTextController,
                     validator: (value)=> registrationController.validateFullName(value!)

                   ),
                   const SizedBox(height: 30,),
                   CustomTextField(
                     hint: 'Username',
                     controller: registrationController.userNameTextController,
                     validator: (value)=> registrationController.validateUserName(value!),

                   ),
                   const SizedBox(height: 30,),
                   CustomTextField(
                     controller: registrationController.phoneNumberTextController,
                     hint: 'Phone Number',
                     validator: (value)=> registrationController.validateFullName(value!),
                   ),
                   const SizedBox(height: 30,),
                   CustomTextField(
                     hint: 'Password',
                     controller: registrationController.passwordTextController,
                     validator: (value)=> registrationController.validatePassword(value!),
                   ),
                   const SizedBox(height: 30,),
                   CustomTextField(
                     hint: 'Confirm Password',
                     controller: registrationController.confirmPasswordTextController,
                     validator: (value)=> registrationController.validateConfirmPassword(value!),
                   ),

                   const SizedBox(height: 50,),
                   CustomFilledButton(text: 'Register', click: (){
                     if (registrationController.createAccountFormKey.currentState!
                         .validate()) {
                       registrationController.createAccount(context);
                       registrationController.createAccountFormKey.currentState!.save();
                     }
                   }),
                   const SizedBox(height: 50,),
                   Center(child: Text('By signing up, you agree to terms and conditions of Vate5',
                     style: theme.textTheme.displaySmall,))

                 ].reversed.toList(),
               ),
             ),
           ),
         ),
    );
  }
}
