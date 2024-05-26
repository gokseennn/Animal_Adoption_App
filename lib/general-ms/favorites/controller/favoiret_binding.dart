import 'package:get/get.dart';
import 'package:pet/general-ms/favorites/controller/favorite_controller.dart';
import 'package:pet/general-ms/favorites/controller/favorite_repository.dart';

class FavoriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavoriteController());
    Get.lazyPut(() => FavoriteRepository());
  }
}
