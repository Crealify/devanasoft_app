class OtpModel {
  final String phoneNumber;
  final int otp;

  OtpModel({required this.phoneNumber, required this.otp});

  Map<String, dynamic> toJson() {
    return {'phoneNumber': phoneNumber, 'otp': otp};
  }
}
