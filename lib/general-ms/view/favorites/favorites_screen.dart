import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pet/common/common_screen.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});
  static const String routeName = '/favorites';
  @override
  Widget build(BuildContext context) {
    return CommonScreen(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 36.0),
                  child: Text(
                    'Favorites',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 36.0),
                  child: SvgPicture.asset('assets/favoritecat.svg'),
                ),
                SvgPicture.asset('assets/favoritedog.svg'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
