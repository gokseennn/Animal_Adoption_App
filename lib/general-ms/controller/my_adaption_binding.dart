import 'package:get/get.dart';
import 'package:pet/general-ms/controller/my_adaption_controller.dart';

class MyAdaptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyAdaptionController());
  }
}
