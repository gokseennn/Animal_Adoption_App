class Profile {
  String email;
  String contact;
  String bio;
  String userBirthDate;
  String location;

  Profile(
      {required this.email,
      required this.contact,
      required this.bio,
      required this.userBirthDate,
      required this.location});
  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        email: json['Email'] ?? "",
        contact: json['Contact'] ?? "",
        bio: json['Bio'] ?? "",
        userBirthDate: json['UserBirthDate'] ?? "",
        location: json['Location'] ?? "",
      );
}
