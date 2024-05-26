import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/general-ms/add_adaption/controller/add_adaption_repository.dart';
import 'package:pet/general-ms/add_adaption/model/add_ad_model.dart';

class AddAdaptionController extends GetxController {
  final _repository = Get.find<AddAdaptionRepository>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController breedController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController aboutController = TextEditingController();
  final TextEditingController imagePath = TextEditingController();

  publishAddAdaption() {
    _repository.addAdaption(
      AddAdModel(
        name: nameController.text,
        breed: breedController.text,
        age: ageController.text,
        weight: weightController.text,
        birthDate: birthDateController.text,
        about: aboutController.text,
        imagePath: "imagePath.text",
      ),
    );
  }
}
