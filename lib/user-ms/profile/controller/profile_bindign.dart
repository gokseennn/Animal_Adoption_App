import 'package:get/get.dart';
import 'package:pet/user-ms/profile/controller/profile_controller.dart';

class ProfileBindin extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }
}
