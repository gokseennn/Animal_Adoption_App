import 'package:get/get.dart';
import 'package:pet/common/services/api_service/api_service.dart';

class HomeRepository {
  final _apiService = Get.find<ApiService>();
  Future getAdList() => _apiService.getData("ads");
}
