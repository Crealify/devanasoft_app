import 'package:devanasoft_app/core/widgets/custom_input.dart';
import 'package:devanasoft_app/core/widgets/gradient_background.dart';
import 'package:devanasoft_app/features/auth/Pages/login_page.dart';
import 'package:flutter/material.dart';
import '../../core/widgets/custom_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _phoneController = TextEditingController();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      showCurvedHeader: true,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 100),
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Form(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      CustomInput(
                        label: 'Full Name',
                        hintText: 'Enter your full name',
                        controller: _nameController,
                      ),
                      const SizedBox(height: 16),
                      CustomInput(
                        label: 'Email',
                        hintText: 'Enter your email',
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 16),
                      CustomInput(
                        label: 'Phone Number',
                        hintText: 'Enter your phone number',
                        controller: _phoneController,
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(height: 32),
                      CustomButton(text: 'Register', onPressed: () {}),
                      const SizedBox(height: 16),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/user_signin');
                        },
                        child: const Text(
                          'Already have an account? Sign In',
                          style: TextStyle(
                            color: Color(0xFF1E88E5),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            GoogleLoginPage(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }
}
