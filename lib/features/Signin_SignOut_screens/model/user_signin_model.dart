class UserSigninModel {
  final String phoneNumber;

  UserSigninModel({
    required this.phoneNumber,
  });

  Map<String, dynamic> toJson() {
    return {
      'phoneNumber': phoneNumber,
    };
  }
}