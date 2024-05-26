import 'package:get/get.dart';
import 'package:pet/general-ms/home/controller/home_controller.dart';
import 'package:pet/general-ms/home/controller/home_repository.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => HomeRepository());
  }
}
