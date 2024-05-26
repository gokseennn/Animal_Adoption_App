import 'package:get/get.dart';
import 'package:pet/general-ms/add_adaption/controller/add_adaption_controller.dart';

class AddAdaptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddAdaptionController>(() => AddAdaptionController());
    Get.lazyPut<AddAdaptionBinding>(() => AddAdaptionBinding());
  }
}
