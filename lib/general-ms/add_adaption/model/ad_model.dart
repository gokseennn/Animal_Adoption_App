class Ad {
  final int adID;
  final int userID;
  final String name;
  final String species;
  final int age;
  final int weight;
  final String birthDate;
  final String about;
  final String imgPath;
  final String location;

  Ad({
    required this.adID,
    required this.userID,
    required this.name,
    required this.species,
    required this.age,
    required this.weight,
    required this.birthDate,
    required this.about,
    required this.imgPath,
    required this.location,
  });

  factory Ad.fromJson(Map<String, dynamic> json) {
    return Ad(
      adID: json['AdID'],
      userID: json['UserID'],
      name: json['Name'],
      species: json['Species'],
      age: json['Age'],
      weight: json['Weight'],
      birthDate: json['BirthDate'],
      about: json['About'],
      imgPath: json['ImgPath'],
      location: json['Location'] ?? "",
    );
  }
  Map<String, dynamic> toJson() => {
        "AdID": adID,
        "UserID": userID,
        'Name': name,
        'Species': species,
        'Age': age,
        'Weight': weight,
        'BirthDate': birthDate,
        'About': about,
        'ImgPath': imgPath,
        'Location': location,
      };
}
