import 'package:get/get.dart';
import 'package:pet/general-ms/view/favorites/controller/favorite_controller.dart';

class FavoriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavoriteController());
  }
}
