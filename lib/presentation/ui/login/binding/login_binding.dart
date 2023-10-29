import 'package:get/get.dart';
import 'package:vate5/presentation/controller/login_controller.dart';

class LoginBinding extends Bindings{
  @override
  void dependencies() {
   Get.put(LoginController());
  }

}