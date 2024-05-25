import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pet/general-ms/home/controller/home_controller.dart';

class CommonScreen extends GetView<HomeController> {
  const CommonScreen({super.key, required this.body});
  final Widget body;
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
            icon: SvgPicture.asset('assets/drawer.svg'),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: controller.changeIndex,
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/navhome.svg',
                  colorFilter: controller.currentIndex.value == 0
                      ? const ColorFilter.mode(
                          Color(0xFFBA68C8), BlendMode.srcIn)
                      : null,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/navpet.svg',
                  colorFilter: controller.currentIndex.value == 1
                      ? const ColorFilter.mode(
                          Color(0xFFBA68C8), BlendMode.srcIn)
                      : null,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/navheart.svg',
                  colorFilter: controller.currentIndex.value == 2
                      ? const ColorFilter.mode(
                          Color(0xFFBA68C8), BlendMode.srcIn)
                      : null,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/navprofile.svg',
                  colorFilter: controller.currentIndex.value == 3
                      ? const ColorFilter.mode(
                          Color(0xFFBA68C8), BlendMode.srcIn)
                      : null,
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Padding(
          padding: EdgeInsets.only(top: Get.context!.mediaQueryPadding.top),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                child: SizedBox(
                  height: Get.height * 0.85,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: Get.back,
                          child: SvgPicture.asset('assets/drawer.svg')),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 32.0),
                        child: Row(
                          children: [
                            Container(
                              width: 75,
                              height: 75,
                              decoration: const BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Ahmet Göksen Akyıldız',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Verified Profile ',
                                        style: TextStyle(
                                            color: Color(0xFF8F959E),
                                            fontWeight: FontWeight.w300),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 5),
                                        height: 10,
                                        width: 10,
                                        decoration: const BoxDecoration(
                                            color: Color(0xFF00D172),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50))),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      ListTile(
                        leading: SvgPicture.asset('assets/info.svg'),
                        title: const Text('Account Information'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: SvgPicture.asset('assets/password.svg'),
                        title: const Text('Password'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: SvgPicture.asset('assets/whislist.svg'),
                        title: const Text('Wishlist'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: SvgPicture.asset('assets/settings.svg'),
                        title: const Text('Settings'),
                        onTap: () {},
                      ),
                      const Spacer(),
                      ListTile(
                        leading: SvgPicture.asset('assets/logout.svg'),
                        title: const Text(
                          'Logout',
                          style: TextStyle(color: Colors.red),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: body,
    );
  }
}
