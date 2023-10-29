import 'package:get/get.dart';
import 'package:vate5/presentation/controller/registration_controller.dart';

class RegisterBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(RegistrationController());
  }

}