import 'package:get/get.dart';
import 'package:pet/user-ms/signin/controller/signin_controller.dart';
import 'package:pet/user-ms/signin/controller/signin_repository.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
    Get.lazyPut<SignInRepository>(() => SignInRepository());
  }
}
