import 'dart:convert';

import 'package:get/get.dart';
import 'package:pet/common/util.dart';
import 'package:pet/general-ms/ad_detail/controller/ad_detail_repositoyr.dart';
import 'package:pet/general-ms/add_adaption/model/ad_model.dart';
import 'package:pet/general-ms/my_adaption/controller/my_adaption_controller.dart';

class AdDetailController extends GetxController with StateMixin {
  final _repostitory = Get.find<AdDetailRepository>();
  late final Ad ad;
  @override
  void onInit() {
    commonAppend(() => initController);
    super.onInit();
  }

  Future<bool> initController() async {
    ad = Ad.fromJson(jsonDecode(Get.parameters['ad'] ?? '{}'));
    return true;
  }

  addFavorite() {
    _repostitory.addFavorite(ad.adID);
  }

  deleteAdd() async {
    _repostitory.deleteAd(ad.adID);
    Get.find<MyAdaptionController>().update();
    Get.find<MyAdaptionController>().adList = [];
    await Get.find<MyAdaptionController>().initController();
    Get.find<MyAdaptionController>().update();
    Get.back();
  }
}
