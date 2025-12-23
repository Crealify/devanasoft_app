import 'package:devanasoft_app/core/widgets/custom_button.dart';
import 'package:devanasoft_app/core/widgets/custom_input.dart';
import 'package:devanasoft_app/core/widgets/gradient_background.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../auth/Pages/google_signup_page.dart';
import '../viewmodel/signin_view_model.dart';

class SigninView extends StatefulWidget {
  const SigninView({super.key});

  @override
  State<SigninView> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SigninView> {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<SigninViewModel>(context, listen: false);
    return GradientBackground(
      showCurvedHeader: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 160),
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Form(
                  key: vm.formKey,
                  child: Column(
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 24),
                      CustomInput(
                        label: 'Phone Number',
                        hintText: 'Enter your phone number',
                        controller: vm.phoneController,
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your phone number';
                          }
                          if (value.length != 10) {
                            return 'Please enter a valid 10-digit phone number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 32),
                      CustomButton(
                        text: 'Send OTP',
                        onPressed: () async {
                          await vm.signIn(context);
                        },
                        isLoading: vm.isLoading,
                      ),
                      const SizedBox(height: 16),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/register");
                        },
                        child: const Text(
                          'Don\'t have an account? Register',
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
            Spacer(),
            GooglesignInPage(),
          ],
        ),
      ),
    );
  }
}
