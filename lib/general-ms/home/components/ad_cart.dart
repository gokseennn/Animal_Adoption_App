import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pet/general-ms/ad_detail/view/ad_detail_screen.dart';
import 'package:pet/general-ms/add_adaption/model/ad_model.dart';

class AdCart extends StatelessWidget {
  const AdCart({super.key, required this.ad});
  final Ad ad;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.offAllNamed(AdDetail.routeName,
          parameters: {'ad': jsonEncode(ad.toJson())}),
      child: Container(
        height: 150,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(
                  0, -3), // Gölgenin yönünü ve büyüklüğünü belirler
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 16),
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Builder(
                  builder: (BuildContext context) {
                    try {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.memory(
                          base64Decode(ad.imgPath),
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      );
                    } catch (e) {
                      // Handle the exception e
                      // You can return a placeholder widget in case of an error
                      return const Text('Error loading image');
                    }
                  },
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ad.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/location.svg'),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          ad.location,
                          style: const TextStyle(
                              color: Color(0xFF8F959E), fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        'Available for',
                        style:
                            TextStyle(color: Color(0xFF64D2A4), fontSize: 16),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 15),
                          height: 15,
                          width: 15,
                          child: SvgPicture.asset('assets/dogmini.svg')),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
