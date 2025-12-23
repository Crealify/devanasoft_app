// Widget to handle Firebase Auth state
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:devanasoft_app/features/user/signin/view/signin_screen.dart';
import 'package:devanasoft_app/features/user/signin/viewmodel/signin_view_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/screens/loader.dart';
import 'features/Presentation/DashBoard/landing_page.dart';
import 'features/auth/Pages/username_page.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // If still loading
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Loader();
        }

        // If not logged in
        if (!snapshot.hasData || snapshot.data == null) {
          return ChangeNotifierProvider(
            create: (_) => SigninViewModel(),
            child: const SigninView(),
          );
        }

        // If logged in, check Firestore user doc
        final user = snapshot.data!;
        return StreamBuilder<DocumentSnapshot>(
          stream: FirebaseFirestore.instance
              .collection("users")
              .doc(user.uid)
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Loader();
            }

            if (!snapshot.hasData || !snapshot.data!.exists) {
              return UsernamePage(
                displayName: user.displayName ?? '',
                profilePic: user.photoURL ?? '',
                email: user.email ?? '',
              );
            }

            // User exists in Firestore, go to landing page
            return const LandingPage();
          },
        );
      },
    );
  }
}
