class UserModel {
  static const String collectionName = "Users";

  String id;
  String email;

  String phone;

  String userName;

  bool emailVerified;

  UserModel(
      {required this.id,
      required this.email,
      this.phone = "",
      this.emailVerified = false,
      required this.userName});

  UserModel.fromJason(Map<String, dynamic> json)
      : this(
          id: json["id"],
          phone: json["phone"],
          emailVerified: json["emailVerified"],
          userName: json["userName"],
          email: json["email"],
        );

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "phone": phone,
      "emailVerified": emailVerified,
      "userName": userName,
      "email": email,
    };
  }
}
