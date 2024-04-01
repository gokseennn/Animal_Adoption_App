import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              icon: SvgPicture.asset('assets/drawer.svg'),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          onTap: (index) {},
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/navhome.svg'),
              label: 'Anasayfa',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/navpet.svg'),
              label: 'Son Haberler',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/navheart.svg'),
              label: 'Kategoriler',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/navprofile.svg'),
              label: 'İletişim',
            ),
          ],
        ),
        drawer: Drawer(
          child: Padding(
            padding: EdgeInsets.only(top: Get.context!.mediaQueryPadding.top),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16),
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
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Verified Profile ',
                                          style: TextStyle(
                                              color: Color(0xFF8F959E),
                                              fontWeight: FontWeight.w300),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 5),
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
              )
            ],
          ),
        ));
  }
}
