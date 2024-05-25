import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/common/services/api_service.dart';
import 'package:pet/general-ms/general_routes.dart';
import 'package:pet/general-ms/view/splash_screen.dart';
import 'package:pet/user-ms/signin/controller/signin_bindings.dart';
import 'package:pet/user-ms/user_routes.dart';

void main() {
  Get.put(
    ApiService(),
    permanent: true,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.noTransition,
      getPages: UserRoutes.routes + GeneralRoutes.routes,
      initialBinding: SignInBinding(),
      home: const SplashScreen(),
    );
  }
}
