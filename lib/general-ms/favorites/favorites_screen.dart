import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pet/common/common_screen.dart';
import 'package:pet/general-ms/favorites/controller/favorite_controller.dart';
import 'package:pet/general-ms/my_adaption/components/my_adaption_card.dart';

class FavoriteScreen extends GetView<FavoriteController> {
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: controller.adList.length,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            mainAxisExtent: 200,
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 16,
                            maxCrossAxisExtent: 200),
                    itemBuilder: (context, index) {
                      return MyyAdaptionCard(
                        ad: controller.adList[index],
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
