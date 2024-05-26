class AddAdModel {
  final String name;
  final String breed;
  final String age;
  final String weight;
  final String birthDate;
  final String about;
  final String imagePath;

  AddAdModel({
    required this.name,
    required this.breed,
    required this.age,
    required this.weight,
    required this.birthDate,
    required this.about,
    required this.imagePath,
  });
  Map<String, dynamic> toJson() => {
        'Name': name,
        'Species': breed,
        'Age': age,
        'Weight': weight,
        'Birthdate': birthDate,
        'About': about,
        'ImgPath': imagePath,
      };
}
