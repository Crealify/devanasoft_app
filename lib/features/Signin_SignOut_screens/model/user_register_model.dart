class UserRegisterModel {
  final String phoneNumber;
  final String name;
  final String email;

  UserRegisterModel({
    required this.phoneNumber,
    required this.name,
    required this.email,
  });

  Map<String, dynamic> toJson() {
    return {'phoneNumber': phoneNumber, 'name': name, 'email': email};
  }
}
