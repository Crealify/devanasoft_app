import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Image.asset("assets/images/devanasoft_logos.png", height: 120),

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

              const Spacer(),

              Text(
                "Sign in to continue",
                style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
              ),
              SizedBox(height: 10),

              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                shadowColor: Colors.red,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.g_mobiledata, color: Colors.black, size: 36),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Image.asset(
                      //     "assets/images/signinwithgoogle.png", // Use clean icon only
                      //     height: 28,
                      //   ),
                      // ),
                      const SizedBox(width: 5),
                      const Text(
                        "Sign in with Google",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
