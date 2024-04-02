import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/common/common_screen.dart';
import 'package:pet/general-ms/controller/my_adaption_controller.dart';
import 'package:pet/general-ms/view/my_adaption/components/my_adaption_card.dart';

class MyAdaption extends GetView<MyAdaptionController> {
  const MyAdaption({super.key});
  static String routeName = '/my_adaption';
  @override
  Widget build(BuildContext context) {
    return CommonScreen(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Text(
              'My Adaption Ad',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          Expanded(
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: controller.adList.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    mainAxisExtent: 200,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    maxCrossAxisExtent: 200),
                itemBuilder: (context, index) {
                  return MyyAdaptionCard(
                    ad: controller.adList[index],
                  );
                }),
          )
        ],
      ),
    ));
  }
}
