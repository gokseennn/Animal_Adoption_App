import 'package:get/get.dart';
import 'package:pet/common/services/app_service/app_service.dart';
import 'package:pet/common/services/app_service/model/user_model.dart';
import 'package:pet/common/util.dart';

class ProfileController extends GetxController with StateMixin {
  final _appService = Get.find<AppService>();
  late final User user = _appService.user;
  @override
  void onInit() {
    commonAppend(() => initController);
    super.onInit();
  }

  Future initController() async {}
}
