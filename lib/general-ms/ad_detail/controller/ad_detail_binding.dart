import 'package:get/get.dart';
import 'package:pet/general-ms/ad_detail/controller/ad_detail_controller.dart';
import 'package:pet/general-ms/ad_detail/controller/ad_detail_repositoyr.dart';

class AdDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdDetailController>(() => AdDetailController(),
        tag: Get.currentRoute);
    Get.lazyPut<AdDetailRepository>(() => AdDetailRepository());
  }
}
