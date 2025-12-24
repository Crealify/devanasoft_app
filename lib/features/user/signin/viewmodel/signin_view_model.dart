// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';

import '../model/user_signin_model.dart';

class SigninViewModel extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();

  bool isLoading = false;

  void navigateToRoute(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

  Future<void> signIn(BuildContext context) async {
    if (!formKey.currentState!.validate()) return;
    isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 2));

    final model = SigninModel(phoneNumber: phoneController.text);

    print(' Sign-in Data: ${model.toJson()}');

    isLoading = false;
    notifyListeners();

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Sign-in successful! OTP sent to your phone.'),
        backgroundColor: Colors.green,
      ),
    );
    navigateToRoute(context, '/otp');
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }
}
