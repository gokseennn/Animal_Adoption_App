import 'package:flutter/material.dart';
import 'package:pet/general-ms/model/ad_model.dart';

class MyyADaptionCard extends StatelessWidget {
  const MyyADaptionCard({super.key, required this.ad});
  final Ad ad;
  @override
  Widget build(BuildContext context) {
    return Container(
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
            offset:
                const Offset(0, -3), // Gölgenin yönünü ve büyüklüğünü belirler
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Garry',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                    Text(
                      '3 Years',
                      style: TextStyle(color: Color(0xFF2B2B2E)),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Yorkshire Terrier',
                    style: TextStyle(color: Color(0xFF2B2B2E)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
