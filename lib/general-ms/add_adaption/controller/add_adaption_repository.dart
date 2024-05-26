import 'package:get/get.dart';
import 'package:pet/common/services/api_service/api_service.dart';
import 'package:pet/general-ms/add_adaption/model/add_ad_model.dart';

class AddAdaptionRepository {
  final _apiService = Get.find<ApiService>();

  Future<bool> addAdaption(AddAdModel addAdModel) => _apiService
          .postData(addAdModel.toJson(), "addAd", loader: true)
          .then((res) {
        return true;
      });
}
