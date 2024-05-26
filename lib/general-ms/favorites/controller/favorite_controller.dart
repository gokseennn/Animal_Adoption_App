import 'package:get/get.dart';
import 'package:pet/common/util.dart';
import 'package:pet/general-ms/add_adaption/model/ad_model.dart';
import 'package:pet/general-ms/favorites/controller/favorite_repository.dart';

class FavoriteController extends GetxController with StateMixin {
  final _repository = FavoriteRepository();
  late final List<Ad> adList;
  @override
  void onInit() {
    commonAppend(() => initController);
    super.onInit();
  }

  Future initController() async {
    final response = await _repository.getFavorites();
    adList = List<Ad>.from(response.map((x) => Ad.fromJson(x)));
    return true;
  }
}
