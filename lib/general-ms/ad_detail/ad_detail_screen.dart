import 'package:flutter/material.dart';
import 'package:pet/common/common_screen.dart';

class AdDetail extends StatelessWidget {
  const AdDetail({super.key});
  static const String routeName = '/ad_detail';
  @override
  Widget build(BuildContext context) {
    return CommonScreen(
        body: Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 130,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.black,
              ),
            ),
          ),
        )
      ],
    ));
  }
}
