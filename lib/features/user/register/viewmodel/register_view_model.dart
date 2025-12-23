import 'package:flutter/material.dart';

import '../model/user_register_model.dart';

class RegisterViewModel extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  bool isLoading = false;

  void register(BuildContext context) async {
    if (!formKey.currentState!.validate()) return;

    isLoading = true;
    notifyListeners();

    // Simulate API call
    await Future.delayed(const Duration(seconds: 2));

    final model = RegisterModel(
      phoneNumber: phoneController.text,
      name: nameController.text,
      email: emailController.text,
    );

    print('Patient Register Data: ${model.toJson()}');

    isLoading = false;
    notifyListeners();

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Registration successful! OTP sent to your phone.'),
        backgroundColor: Colors.green,
      ),
    );

    Navigator.pushNamed(
      context,
      '/patient_otp',
      arguments: phoneController.text,
    );
  }

  @override
  void dispose() {
    phoneController.dispose();
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }
}
