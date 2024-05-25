import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pet/user-ms/signin/controller/signin_controller.dart';
import 'package:pet/user-ms/signup/signup_screen.dart';

class SigninScreen extends GetView<SignInController> {
  const SigninScreen({super.key});
  static const routeName = '/signin';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 214, 148, 255),
              Color.fromARGB(255, 242, 143, 143),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset('assets/logo.svg'),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    height: Get.height * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(32.0),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 237, 237, 237),
                              borderRadius: BorderRadius.circular(12)),
                          margin: const EdgeInsets.symmetric(horizontal: 18),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Center(
                              child: TextFormField(
                                controller: controller.emailController,
                                decoration: const InputDecoration(
                                    labelText: 'E-mail',
                                    prefixIcon: Icon(Icons.mail),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 237, 237, 237),
                              borderRadius: BorderRadius.circular(12)),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 32),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Center(
                              child: TextFormField(
                                controller: controller.passwordController,
                                decoration: const InputDecoration(
                                    labelText: 'Password',
                                    suffixIcon: InkWell(
                                      child: Icon(Icons.visibility),
                                    ),
                                    prefixIcon: Icon(Icons.lock),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: controller.login,
                          child: Container(
                            width: double.infinity,
                            height: 60,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 213, 140, 229)),
                            margin: const EdgeInsets.symmetric(horizontal: 18),
                            child: const Center(
                                child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      'Don’t have an account?',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.toNamed(SignUpScreen.routeName),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 157, 57, 215)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
