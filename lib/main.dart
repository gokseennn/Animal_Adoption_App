import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pet/general-ms/view/splash_screen.dart';
import 'package:pet/user-ms/user_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: UserRoutes.routes,
      home: const SplashScreen(),
    );
  }
}
