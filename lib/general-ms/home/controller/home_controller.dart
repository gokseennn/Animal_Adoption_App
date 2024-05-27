import 'package:get/get.dart';
import 'package:pet/common/util.dart';
import 'package:pet/general-ms/add_adaption/model/ad_model.dart';
import 'package:pet/general-ms/favorites/favorites_screen.dart';
import 'package:pet/general-ms/home/controller/home_repository.dart';
import 'package:pet/general-ms/home/home_screen.dart';
import 'package:pet/general-ms/my_adaption/view/my_adaption_screen.dart';
import 'package:pet/user-ms/profile/view/profile_screen.dart';

class HomeController extends GetxController with StateMixin {
  final _repository = Get.find<HomeRepository>();
  final currentIndex = 0.obs;
  RxList<Ad> adList = RxList<Ad>();

  void changeIndex(int index) {
    currentIndex.value = index;
    if (currentIndex.value == 0) {
      Get.toNamed(HomeScreen.routeName);
    } else if (currentIndex.value == 1) {
      Get.toNamed(MyAdaption.routeName);
    } else if (currentIndex.value == 2) {
      Get.toNamed(FavoriteScreen.routeName);
    } else if (currentIndex.value == 3) {
      Get.toNamed(ProfileScreen.routeName);
    }
  }

  @override
  void onInit() async {
    commonAppend(() => initController);
    super.onInit();
  }

  Future<bool> initController() async {
    var list = await _repository.getAdList();
    adList.value = list.map<Ad>((e) => Ad.fromJson(e)).toList();
    return true;
  }
}
