
class SigninModel {
  final String phoneNumber;

  SigninModel({
    required this.phoneNumber,
  });

  Map<String, dynamic> toJson() {
    return {
      'phone_number': phoneNumber,
    };
  }
}