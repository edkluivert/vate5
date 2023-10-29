import 'package:get/get.dart';
import 'package:vate5/presentation/controller/bottom_nav_controller.dart';
import 'package:vate5/presentation/controller/home_controller.dart';
import 'package:vate5/presentation/controller/search_screen_controller.dart';
import 'package:vate5/presentation/controller/settings_controller.dart';

class BottomNavBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => SearchScreenController());
    Get.lazyPut(() => SettingsController());
  }

}