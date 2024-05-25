// ignore: file_names
class SignInModel {
  String email;
  String password;

  SignInModel({required this.email, required this.password});

  Map<String, dynamic> toJson() => {
        "Email": email,
        "Password": password,
      };
}
