import 'package:get/get.dart';
import 'package:pet/general-ms/add_adaption/model/ad_model.dart';

class MyAdaptionController extends GetxController {
  final List<Ad> adList = [
    Ad(
      adID: 1,
      userID: 2,
      name: 'Garry',
      species: 'Species ${3 + 1}',
      age: 3,
      weight: 12,
      birthDate: DateTime.now()
          .subtract(const Duration(days: (12 + 1) * 365))
          .toIso8601String(),
      about: 'About Garry ${1 + 1}',
      imgPath: 'Path/to/image${1 + 1}.jpg',
      location: '3 Years',
    ),
    Ad(
      adID: 1,
      userID: 2,
      name: 'Garry',
      species: 'Species ${3 + 1}',
      age: 3,
      weight: 12,
      birthDate: DateTime.now()
          .subtract(const Duration(days: (12 + 1) * 365))
          .toIso8601String(),
      about: 'About Garry ${1 + 1}',
      imgPath: 'Path/to/image${1 + 1}.jpg',
      location: '3 Years',
    ),
    Ad(
      adID: 1,
      userID: 2,
      name: 'Garry',
      species: 'Species ${3 + 1}',
      age: 3,
      weight: 12,
      birthDate: DateTime.now()
          .subtract(const Duration(days: (12 + 1) * 365))
          .toIso8601String(),
      about: 'About Garry ${1 + 1}',
      imgPath: 'Path/to/image${1 + 1}.jpg',
      location: '3 Years',
    ),
  ];
}
