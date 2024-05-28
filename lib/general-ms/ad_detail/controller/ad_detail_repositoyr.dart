import 'package:get/get.dart';
import 'package:pet/common/services/api_service/api_service.dart';

class AdDetailRepository {
  final _apiService = Get.find<ApiService>();
  addFavorite(int adId) =>
      _apiService.postData({'AdId': adId.toString()}, 'addFavoriteAd');
  deleteAd(int adId) => _apiService.deleteData(
        'deleteAd',
        {'AdId': adId.toString()},
      );
}
