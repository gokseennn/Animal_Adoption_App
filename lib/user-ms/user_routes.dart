import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pet/general-ms/splash/splash_screen.dart';
import 'package:pet/user-ms/profile/controller/profile_bindign.dart';
import 'package:pet/user-ms/profile/view/profile_screen.dart';
import 'package:pet/user-ms/signin/controller/signin_bindings.dart';
import 'package:pet/user-ms/signin/view/signin_screen.dart';
import 'package:pet/user-ms/signup/signup_screen.dart';

class UserRoutes {
  static final routes = [
    GetPage(name: SplashScreen.routeName, page: () => const SplashScreen()),
    GetPage(
      name: SigninScreen.routeName,
      page: () => const SigninScreen(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: SignUpScreen.routeName,
      page: () => const SignUpScreen(),
    ),
    GetPage(
        name: ProfileScreen.routeName,
        page: () => const ProfileScreen(),
        binding: ProfileBindin()),
  ];
}
