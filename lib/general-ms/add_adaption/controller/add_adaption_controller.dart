import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pet/general-ms/add_adaption/controller/add_adaption_repository.dart';
import 'package:pet/general-ms/add_adaption/model/add_ad_model.dart';
import 'package:image/image.dart' as img;
import 'package:pet/general-ms/home/controller/home_controller.dart';
import 'package:pet/general-ms/my_adaption/controller/my_adaption_controller.dart';
import 'package:pet/general-ms/my_adaption/view/my_adaption_screen.dart';

class AddAdaptionController extends GetxController {
  final _repository = Get.find<AddAdaptionRepository>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController breedController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final TextEditingController aboutController = TextEditingController();
  String? base64Image;

  Uint8List? imageBytes;

  publishAddAdaption() async {
    _repository.addAdaption(
      AddAdModel(
          name: nameController.text,
          breed: breedController.text,
          age: ageController.text,
          weight: weightController.text,
          birthDate: birthDateController.text,
          about: aboutController.text,
          imagePath: base64Image ?? ""),
    );

    try {
      await Get.find<MyAdaptionController>().initController();
      Get.find<MyAdaptionController>().update();
      Get.offAllNamed(MyAdaption.routeName);
    } catch (e) {
      print(e);
    }
  }

  Future<String> compressAndConvertToBase64(File imageFile) async {
    final bytes = await imageFile.readAsBytes();
    img.Image? image = img.decodeImage(bytes);

    if (image != null) {
      img.Image resized = img.copyResize(image, width: 100, height: 100);
      Uint8List compressedBytes =
          Uint8List.fromList(img.encodeJpg(resized, quality: 85));
      base64Image = base64Encode(compressedBytes);
      return base64Encode(compressedBytes);
    } else {
      throw Exception('Resim sıkıştırılamadı.');
    }
  }

  Future<void> getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
      base64Image = await compressAndConvertToBase64(imageFile);
      imageBytes = base64Decode(base64Image!);
      update();
    } else {}
  }

  Future<String> imageToBase64(File imageFile) async {
    final bytes = await imageFile.readAsBytes();
    return base64Encode(bytes);
  }

  Uint8List displayImage(String base64Image) {
    return base64Decode(base64Image);
  }
}
