import 'package:get/get.dart';
import 'package:pet/common/util.dart';
import 'package:pet/general-ms/add_adaption/model/ad_model.dart';
import 'package:pet/general-ms/my_adaption/controller/my_adaption_repository.dart';

class MyAdaptionController extends GetxController with StateMixin {
  final _repository = MyAdaptionRepository();
  late final List<Ad> adList;
  @override
  void onInit() {
    commonAppend(() => initController);
    super.onInit();
  }

  Future initController() async {
    var list = await _repository.getAdaption();
    adList = List<Ad>.from(list.map((e) => Ad.fromJson(e)));
    return true;
  }
}
