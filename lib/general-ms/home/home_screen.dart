import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pet/common/common_screen.dart';
import 'package:pet/general-ms/home/controller/home_controller.dart';
import 'package:pet/general-ms/home/components/ad_cart.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (_) => CommonScreen(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/logo.svg',
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                width: double.infinity,
                height: 50,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(220, 166, 48, 240),
                          Color.fromARGB(88, 170, 0, 255)
                        ]),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Text(
                          'Search Adoption Ad',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return AdCart(
                        ad: controller.adList[index],
                      );
                    },
                    itemCount: controller.adList.length),
              )
            ],
          ),
        ),
      ),
    );
  }
}
