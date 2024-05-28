import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/common/common_screen.dart';
import 'package:pet/general-ms/add_adaption/controller/add_adaption_controller.dart';

class AddAdaptionScreen extends StatelessWidget {
  const AddAdaptionScreen({super.key});
  static String routeName = '/add_adaption';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddAdaptionController>(
        init: AddAdaptionController(),
        builder: (controller) {
          return CommonScreen(
            body: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () => controller.getImage(),
                      child: Container(
                        height: 130,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: controller.imageBytes != null
                            ? Image.memory(controller.imageBytes!)
                            : const Center(
                                child: Text(
                                'Henüz bir resim seçilmedi.',
                                textAlign: TextAlign.center,
                              )),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12.0, left: 8),
                    child: Text(
                      "Pet Profile",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.black,
                  ),
                  item("İsim", controller.nameController),
                  item("Cins", controller.breedController),
                  item("Yaş", controller.ageController),
                  item("Kilo", controller.weightController),
                  item("Doğum Tarihi", controller.birthDateController),
                  item("Hakkında", controller.aboutController),
                  const Spacer(),
                  Center(
                    child: InkWell(
                      onTap: () => controller.publishAddAdaption(),
                      child: Ink(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          gradient: LinearGradient(
                            colors: [
                              Colors.pink,
                              Color.fromARGB(255, 217, 199, 218)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          constraints: const BoxConstraints(
                              maxWidth: double.infinity, minHeight: 50),
                          child: const Text('İlanı Yayınla',
                              style: TextStyle(color: Colors.black)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  Padding item(String title, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: SizedBox(
        width: Get.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: Get.width * 0.6,
              child: TextFormField(
                controller: controller,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(top: 0, bottom: 0),
                ),
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
