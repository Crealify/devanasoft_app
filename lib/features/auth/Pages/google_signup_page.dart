import 'package:devanasoft_app/features/auth/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GooglesignInPage extends ConsumerWidget {
  const GooglesignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        SizedBox(height: 5),

        Text(
          "Sign in to continue",
          style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
        ),

        GestureDetector(
          onTap: () {
            ref.read(authServiceProvider).signInWithGoogle();
          },
          child: Card(
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
        ),

        const SizedBox(height: 40),
      ],
    );
  }
}
