import 'package:get/get.dart';
import 'package:pet/common/services/api_service/api_service.dart';

class FavoriteRepository {
  final _apiService = Get.find<ApiService>();
  getFavorites() async {
    return await _apiService.getData("userFavoriteAds");
  }
}
