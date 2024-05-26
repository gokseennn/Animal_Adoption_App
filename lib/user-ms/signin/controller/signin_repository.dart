import 'package:get/get.dart';
import 'package:pet/common/services/api_service/api_service.dart';
import 'package:pet/common/services/app_service/model/user_model.dart';
import 'package:pet/user-ms/signin/model/signIn_model.dart';

class SignInRepository {
  final _apiService = Get.find<ApiService>();
  Future<User?> login(SignInModel data) async {
    var user = await _apiService.postData(data.toJson(), "login", loader: true);
    if (user != null) {
      return User.fromJson(user);
    } else {
      return null;
    }
  }
}
