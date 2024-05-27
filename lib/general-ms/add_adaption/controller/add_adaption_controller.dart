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

  publishAddAdaption() {
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
    Get.find<HomeController>().update();
  }

  Future<String> compressAndConvertToBase64(File imageFile) async {
    final bytes = await imageFile.readAsBytes();
    img.Image? image = img.decodeImage(bytes);

    if (image != null) {
      img.Image resized = img.copyResize(image,
          width: 100, height: 100); // Örneğin genişliği 800 piksel yapıyoruz
      Uint8List compressedBytes = Uint8List.fromList(img.encodeJpg(resized,
          quality: 85)); // Kaliteyi %85 yaparak sıkıştırıyoruz
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
      File imageFile = File(pickedFile.path); // XFile'ı File'a dönüştür
      base64Image = await compressAndConvertToBase64(
          imageFile); // Sıkıştırılmış resmi base64'e çevir
      imageBytes = base64Decode(base64Image!); // Base64'ten Uint8List'e çevir
      update(); // GetX kontrolünü güncelle
    } else {
      print('Resim seçilmedi.');
    }
  }

  Future<String> imageToBase64(File imageFile) async {
    final bytes = await imageFile.readAsBytes();
    return base64Encode(bytes);
  }

  Uint8List displayImage(String base64Image) {
    return base64Decode(base64Image);
  }
}
