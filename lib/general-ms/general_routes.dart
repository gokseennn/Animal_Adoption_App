import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pet/general-ms/ad_detail/controller/ad_detail_binding.dart';
import 'package:pet/general-ms/add_adaption/controller/add_adaption_binding.dart';
import 'package:pet/general-ms/add_adaption/view/add_adaption_screen.dart';
import 'package:pet/general-ms/favorites/controller/favoiret_binding.dart';
import 'package:pet/general-ms/home/controller/home_binding.dart';
import 'package:pet/general-ms/my_adaption/controller/my_adaption_binding.dart';
import 'package:pet/general-ms/ad_detail/view/ad_detail_screen.dart';
import 'package:pet/general-ms/favorites/favorites_screen.dart';
import 'package:pet/general-ms/home/home_screen.dart';
import 'package:pet/general-ms/my_adaption/view/my_adaption_screen.dart';

class GeneralRoutes {
  static final routes = [
    GetPage(
        name: HomeScreen.routeName,
        page: () => const HomeScreen(),
        binding: HomeBinding()),
    GetPage(
      name: MyAdaption.routeName,
      page: () => const MyAdaption(),
      binding: MyAdaptionBinding(),
    ),
    GetPage(
      name: FavoriteScreen.routeName,
      page: () => const FavoriteScreen(),
      binding: FavoriteBinding(),
    ),
    GetPage(
      name: AdDetail.routeName,
      page: () => const AdDetail(),
      binding: AdDetailBinding(),
    ),
    GetPage(
        name: AddAdaptionScreen.routeName,
        page: () => const AddAdaptionScreen(),
        binding: AddAdaptionBinding())
  ];
}
