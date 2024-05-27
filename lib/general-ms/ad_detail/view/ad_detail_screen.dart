import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/common/common_screen.dart';
import 'package:pet/general-ms/ad_detail/controller/ad_detail_controller.dart';

class AdDetail extends StatelessWidget {
  const AdDetail({super.key});
  static const String routeName = '/ad_detail';
  @override
  Widget build(BuildContext context) {
    print(Get.previousRoute);
    final AdDetailController controller =
        Get.find<AdDetailController>(tag: Get.currentRoute);
    return controller.obx(
      (_) => CommonScreen(
        body: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.all(24),
                height: Get.height * 0.28,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 230, 206, 164),
                borderRadius: BorderRadius.circular(12),
              ),
              height: Get.height * 0.35,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        controller.ad.name,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            controller.addFavorite();
                          },
                          icon: const Icon(
                            Icons.favorite_border,
                          ),
                          color: Colors.red)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        item("${controller.ad.age} Year"),
                        item(controller.ad.species),
                        item("${controller.ad.weight} Kg"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.green,
                        ),
                        Text(controller.ad.location),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Text(
                      controller.ad.about,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                margin: const EdgeInsets.only(top: 12),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text("İlani Sil",
                    style: TextStyle(color: Colors.white, fontSize: 18))),
          ],
        ),
      ),
    );
  }

  Container item(String value) {
    return Container(
      height: 32,
      width: 75,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(child: Text(value)),
    );
  }
}
