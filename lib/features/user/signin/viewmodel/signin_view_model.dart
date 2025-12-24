// ignore_for_file: use_build_context_synchronously

import 'dart:math';

import 'package:flutter/material.dart';

class SigninViewModel extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();

  bool isLoading = false;

  void navigateToRoute(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

  // Future<void> signIn(BuildContext context) async {
  //   if (!formKey.currentState!.validate()) return;
  //   isLoading = true;
  //   notifyListeners();
  //   await Future.delayed(const Duration(seconds: 2));

  //   final model = SigninModel(phoneNumber: phoneController.text);

  //   print(' Sign-in Data: ${model.toJson()}');

  //   isLoading = false;
  //   notifyListeners();

  //   ScaffoldMessenger.of(context).showSnackBar(
  //     const SnackBar(
  //       content: Text('Sign-in successful! OTP sent to your phone.'),
  //       backgroundColor: Colors.green,
  //     ),
  //   );
  //   navigateToRoute(context, '/otp');
  // }
  Future<void> signIn(BuildContext context) async {
    if (!formKey.currentState!.validate()) return;

    isLoading = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 1));

    final int generatedOtp = 100000 + Random().nextInt(900000);

    isLoading = false;
    notifyListeners();

    Navigator.pushNamed(
      context,
      '/otp',
      arguments: {'otp': generatedOtp, 'phone': phoneController.text},
    );
    print('Generated OTP: $generatedOtp for phone: ${phoneController.text}');
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }
}
