import 'package:get/get.dart';
import 'package:pet/general-ms/model/ad_model.dart';
import 'package:pet/general-ms/view/home/home_screen.dart';
import 'package:pet/general-ms/view/my_adaption/my_adaption_screen.dart';

class HomeController extends GetxController {
  final currentIndex = 0.obs;
  late final List<Ad> adList = [
    Ad(name: 'Ad 1', location: 'Location 1'),
    Ad(name: 'Ad 2', location: 'Location 2'),
    Ad(name: 'Ad 3', location: 'Location 3'),
    Ad(name: 'Ad 4', location: 'Location 4'),
    Ad(name: 'Ad 5', location: 'Location 5'),
  ];

  void changeIndex(int index) {
    currentIndex.value = index;
    if (currentIndex.value == 0) {
      Get.toNamed(HomeScreen.routeName);
    } else if (currentIndex.value == 1) {
      Get.toNamed(MyAdaption.routeName);
    } else if (currentIndex.value == 2) {
      Get.toNamed('/beğeni');
    } else if (currentIndex.value == 3) {
      Get.toNamed('/profil');
    }
  }
}
