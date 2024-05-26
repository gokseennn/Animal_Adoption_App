import 'package:pet/common/services/app_service/model/profile.dart';

class User {
  String username;
  int userID;
  Profile profile;
  User({
    required this.userID,
    required this.username,
    required this.profile,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        username: json['username'] ?? "",
        userID: json['userID'] ?? 0,
        profile: Profile.fromJson(json['profile']),
      );
}
