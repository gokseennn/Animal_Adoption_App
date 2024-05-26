import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/common/common_screen.dart';
import 'package:pet/user-ms/profile/controller/profile_controller.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({super.key});
  static const String routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return CommonScreen(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          profileInfo("UserName", controller.user.username),
          profileInfo("Email", controller.user.profile.email),
          profileInfo("Phone", controller.user.profile.contact),
          profileInfo("Bio", controller.user.profile.bio),
          profileInfo("Location", controller.user.profile.location),
          profileInfo("Birth Date",
              controller.user.profile.userBirthDate.split("T").first),
        ],
      ),
    ));
  }

  Padding profileInfo(String header, String value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(header,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.5),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(value,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400))),
        ],
      ),
    );
  }
}
