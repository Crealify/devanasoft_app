import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/images/devanasoft_logo.png", height: 80),

              const SizedBox(height: 10),

              const Text(
                "Welcome to Devanasoft",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
