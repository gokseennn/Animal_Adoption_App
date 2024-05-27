import 'package:get/get.dart';
import 'package:pet/user-ms/signup/controller/signup_controller.dart';
import 'package:pet/user-ms/signup/controller/signup_repository.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController());
    Get.lazyPut<SignUpRepository>(() => SignUpRepository());
  }
}
