import 'package:get/get.dart';
import 'package:vate5/data/services/base/api_service.dart';
import 'package:vate5/presentation/controller/device_manager.dart';

class AppBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(DeviceManager(), permanent: true);
    Get.put(ApiService());
  }

}