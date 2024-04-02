import 'package:get/get.dart';
import 'package:pet/general-ms/model/ad_model.dart';
import 'package:pet/general-ms/view/home/home_screen.dart';

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
      Get.offNamed(HomeScreen.routeName);
    } else if (currentIndex.value == 1) {
      Get.offNamed('/pet');
    } else if (currentIndex.value == 2) {
      Get.offNamed('/beğeni');
    } else if (currentIndex.value == 3) {
      Get.offNamed('/profil');
    }
  }
}
