import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pet/common/common_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});
  static const routeName = '/settings';
  @override
  Widget build(BuildContext context) {
    return CommonScreen(
        body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          const Text('Change Password',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Old Password',
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 24),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'New Password',
              ),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10),
            ),
            width: Get.width * 0.4,
            child: const Center(
                child: Text('Delete Account',
                    style: TextStyle(color: Colors.white))),
          ),
        ],
      ),
    ));
  }
}
