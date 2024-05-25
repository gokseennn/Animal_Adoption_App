class User {
  String username;
  int userID;

  User({
    required this.userID,
    required this.username,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        username: json['username'] ?? "",
        userID: json['userID'] ?? 0,
      );
}
