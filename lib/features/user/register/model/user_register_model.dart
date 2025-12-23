class RegisterModel {
  final String phoneNumber;
  final String name;
  final String email;

  RegisterModel({
    required this.phoneNumber,
    required this.name,
    required this.email,
  });

  Map<String, dynamic> toJson() {
    return {
      'phone_number': phoneNumber,
      'name': name,
      'email': email,
    };
  }
}
