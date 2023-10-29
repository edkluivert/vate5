
import 'package:get/get.dart';
import 'package:vate5/presentation/ui/bottom_navigation/binding/bottom_nav_binding.dart';

import '../../presentation/ui/bottom_navigation/pages/bottom_nav_screen.dart';
import '../../presentation/ui/login/binding/login_binding.dart';
import '../../presentation/ui/login/pages/login_screen.dart';
import '../../presentation/ui/register/binding/register_binding.dart';
import '../../presentation/ui/register/pages/register_screen.dart';
import '../../presentation/ui/splash/pages/splash_screen.dart';
import 'app_routes.dart';

Duration get transitionDuration => const Duration(milliseconds: 400);

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
      transitionDuration: transitionDuration,
    ),


    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreen(),
      binding: LoginBinding(),
      transition: Transition.fadeIn,
      transitionDuration: transitionDuration,
    ),
    GetPage(
      name: AppRoutes.signUp,
      page: () =>  RegisterScreen(),
      binding: RegisterBinding(),
      transition: Transition.fadeIn,
      transitionDuration: transitionDuration,
    ),
    // GetPage(
    //   name: AppRoutes.forgotPassword,
    //   page: () => ForgotPasswordScreen(),
    //   binding: ForgotPasswordBinding(),
    //   transition: Transition.fadeIn,
    //   transitionDuration: transitionDuration,
    // ),
    //
    // GetPage(
    //   name: AppRoutes.notification,
    //   page: () => const NotificationScreen(),
    //   transition: Transition.fadeIn,
    //   transitionDuration: transitionDuration,
    // ),
    //
    GetPage(
      name: AppRoutes.bottomNav,
      page: () => const BottomNavScreen(),
      binding: BottomNavBinding(),
      transition: Transition.fadeIn,
      transitionDuration: transitionDuration,
    ),

  ];
}