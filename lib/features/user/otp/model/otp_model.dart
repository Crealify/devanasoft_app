class OtpModel {
  final String phoneNumber;
  final int otp;

  OtpModel({required this.phoneNumber, required this.otp});

  Map<String, dynamic> toJson() {
    return {'phone_number': phoneNumber, 'otp': otp};
  }

  factory OtpModel.fromJson(Map<String, dynamic> json) {
    return OtpModel(
      phoneNumber: json['phone_number'] as String,
      otp: json['otp'] as int,
    );
  }
}
