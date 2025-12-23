import 'package:flutter/material.dart';

import '../model/otp_model.dart';

class OtpViewModel extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  final otpController = TextEditingController();
  final phoneController = TextEditingController();

  bool isLoading = false;

  Future<void> verifyOtp(BuildContext context) async {
    if (!formKey.currentState!.validate()) return;

    isLoading = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 2));

    final model = OtpModel(
      phoneNumber: phoneController.text.trim(),
      otp: int.tryParse(otpController.text.trim()) ?? 0,
    );

    print("OTP MODEL => ${model.toJson()}");

    isLoading = false;
    notifyListeners();

    // UI Side (now works)
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("OTP verified successfully!"),
        backgroundColor: Colors.green,
      ),
    );

    Navigator.pushReplacementNamed(context, '/landing');
  }

  @override
  void dispose() {
    otpController.dispose();
    phoneController.dispose();
    super.dispose();
  }
}
