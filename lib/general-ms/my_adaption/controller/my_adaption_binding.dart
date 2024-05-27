import 'package:get/get.dart';
import 'package:pet/general-ms/my_adaption/controller/my_adaption_controller.dart';
import 'package:pet/general-ms/my_adaption/controller/my_adaption_repository.dart';

class MyAdaptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyAdaptionController());
    Get.lazyPut(() => MyAdaptionRepository());
  }
}
