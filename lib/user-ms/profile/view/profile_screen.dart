import 'package:flutter/material.dart';
import 'package:pet/common/common_screen.dart';

class ProfileScreen extends StatelessWidget {
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
          profileInfo("UserName", "Gokseenn"),
          profileInfo("Email", "ahmet.goksen81@icloud.com"),
          profileInfo("Phone", "0532 123 45 67"),
          profileInfo("Bio",
              "I am a software developer.I am a software developer.I am a software developer.I am a software developer.I am a software developer."),
          profileInfo("Location", "Istanbul"),
          profileInfo("Birth Date", "10-03-2002"),
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
