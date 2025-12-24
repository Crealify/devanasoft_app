import 'package:flutter/material.dart';

import 'dart:math';

class OtpViewModel extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  final otpController = TextEditingController();

  late int generatedOtp;
  late String phoneNumber;

  bool isLoading = false;
  bool _snackShown = false;

  void initOtp({
    required BuildContext context,
    required int otp,
    required String phone,
  }) {
    if (_snackShown) return;

    generatedOtp = otp;
    phoneNumber = phone;
    _snackShown = true;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showOtpSnack(context, generatedOtp);
    });
  }

  // 🔥 NEW: Resend OTP
  void resendOtp(BuildContext context) {
    generatedOtp = 100000 + Random().nextInt(900000);
    otpController.clear();

    _showOtpSnack(context, generatedOtp);
  }

  void _showOtpSnack(BuildContext context, int otp) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Your OTP is: $otp"),
        duration: const Duration(seconds: 8),
        backgroundColor: Colors.green,
      ),
    );
  }

  Future<void> verifyOtp(BuildContext context) async {
    if (!formKey.currentState!.validate()) return;

    isLoading = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 2));

    final enteredOtp = int.tryParse(otpController.text.trim()) ?? 0;

    isLoading = false;
    notifyListeners();

    if (enteredOtp != generatedOtp) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Invalid OTP"),
          backgroundColor: Colors.red,
        ),
      ); 
      return;
    }

    // ScaffoldMessenger.of(context).showSnackBar(
    //   const SnackBar(
    //     content: Text("OTP verified successfully!"),
    //     backgroundColor: Colors.green,
    //   ),
    // );

    Navigator.pushReplacementNamed(context, '/landing');
  }

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }
}
