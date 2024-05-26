import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:pet/general-ms/add_adaption/model/ad_model.dart';
import 'package:pet/general-ms/ad_detail/view/ad_detail_screen.dart';

class MyyAdaptionCard extends StatelessWidget {
  const MyyAdaptionCard({super.key, required this.ad});
  final Ad ad;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(AdDetail.routeName),
      child: Container(
        height: 220,
        width: 200, //silinecek
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              height: 130,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ad.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                      Text(
                        '${ad.age} years',
                        style: const TextStyle(color: Color(0xFF2B2B2E)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      ad.species,
                      style: const TextStyle(color: Color(0xFF2B2B2E)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
