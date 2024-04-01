import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pet/general-ms/controller/home_binding.dart';
import 'package:pet/general-ms/view/home/home_screen.dart';

class GeneralRoutes {
  static final routes = [
    GetPage(
        name: HomeScreen.routeName,
        page: () => const HomeScreen(),
        binding: HomeBinding()),
  ];
}
