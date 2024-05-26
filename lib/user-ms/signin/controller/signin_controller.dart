import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/common/services/app_service/app_service.dart';
import 'package:pet/user-ms/signin/controller/signin_repository.dart';
import 'package:pet/user-ms/signin/model/signIn_model.dart';

class SignInController extends GetxController {
  final _repository = SignInRepository();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void onInit() {
    emailController.text = "tayfun@gmail.com";
    passwordController.text = "1234";
    super.onInit();
  }

  void login() async {
    var user = await _repository.login(SignInModel(
        email: emailController.text, password: passwordController.text));
    if (user != null) {
      Get.find<AppService>().user = user;
      Get.toNamed('/home');
    } else {
      Get.snackbar('Error', 'Invalid email or password');
    }
  }
}
