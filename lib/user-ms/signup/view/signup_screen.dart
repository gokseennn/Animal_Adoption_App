import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static const routeName = '/signup';
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
              Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: Get.back,
                  child: Container(
                    margin: const EdgeInsets.only(left: 18),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: const Color.fromARGB(255, 213, 156, 249)),
                    child: const Icon(Icons.arrow_back),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 32)
                        .add(const EdgeInsets.only(bottom: 0)),
                    height: Get.height * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Register',
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                        ),
                        item(
                            title: 'E-mail',
                            icon: const Icon(Icons.mail),
                            controller: TextEditingController()),
                        item(
                            title: 'Username',
                            icon: const Icon(Icons.mail),
                            controller: TextEditingController()),
                        item(
                            title: 'Password',
                            icon: const Icon(Icons.mail),
                            controller: TextEditingController()),
                        item(
                            title: 'Confirm Password',
                            icon: const Icon(Icons.mail),
                            controller: TextEditingController()),
                        item(
                            title: 'Contact',
                            icon: const Icon(Icons.mail),
                            controller: TextEditingController()),
                        item(
                            title: 'Bio',
                            icon: const Icon(Icons.mail),
                            controller: TextEditingController()),
                        item(
                            title: 'UserBirthDate',
                            icon: const Icon(Icons.mail),
                            controller: TextEditingController()),
                        Container(
                          width: double.infinity,
                          height: 60,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 213, 140, 229)),
                          margin: const EdgeInsets.symmetric(horizontal: 18),
                          child: const Center(
                              child: Text(
                            'Register',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          )),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container item(
      {required String title,
      required Icon icon,
      required TextEditingController controller}) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 237, 237, 237),
          borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Center(
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
                labelText: title, prefixIcon: icon, border: InputBorder.none),
          ),
        ),
      ),
    );
  }
}
