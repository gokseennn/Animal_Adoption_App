import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pet/general-ms/view/splash_screen.dart';
import 'package:pet/user-ms/view/signin/signin_screen.dart';
import 'package:pet/user-ms/view/signup/signup_screen.dart';

class UserRoutes {
  static final routes = [
    GetPage(name: SplashScreen.routeName, page: () => const SplashScreen()),
    GetPage(
      name: SigninScreen.routeName,
      page: () => const SigninScreen(),
    ),
    GetPage(
      name: SignUpScreen.routeName,
      page: () => const SignUpScreen(),
    ),
  ];
}
