import 'package:get/get.dart';
import 'package:pet/common/services/api_service/api_service.dart';

class MyAdaptionRepository {
  final _apiService = Get.find<ApiService>();
  getAdaption() async {
    return await _apiService.getData("userAds");
  }
}
