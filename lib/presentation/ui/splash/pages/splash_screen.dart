import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vate5/core/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  void initialization(){
    Future.delayed(Duration(
        seconds: 2
    )).then((value) {
      Get.toNamed(AppRoutes.signUp);
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    initialization();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
       body: SafeArea(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
              Center(child: Text('Vate5', style: theme.textTheme.displayMedium))
           ],
         ),
       ),
    );
  }
}
