import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AdCart extends StatelessWidget {
  const AdCart({super.key, required this.name, required this.location});
  final String name;
  final String location;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 24),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 5,
            blurRadius: 7,
            offset:
                const Offset(0, -3), // Gölgenin yönünü ve büyüklüğünü belirler
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
                  color: Colors.black),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/location.svg'),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        location,
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
                      style: TextStyle(color: Color(0xFF64D2A4), fontSize: 16),
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
    );
  }
}
