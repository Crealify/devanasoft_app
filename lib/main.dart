// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:devanasoft_app/core/screens/loader.dart';
// import 'package:devanasoft_app/core/widgets/colors.dart';
// import 'package:devanasoft_app/features/auth/Pages/username_page.dart';
// import 'package:devanasoft_app/firebase_options.dart';
// import 'package:devanasoft_app/features/Presentation/DashBoard/landing_page.dart';
// import 'package:devanasoft_app/routes.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import 'features/userAuth/register/view/register_screen.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(ProviderScope(child: MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'DEVABASOFT APP',

//       theme: appTheme,
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/splash',

//       routes: appRoutes,

//       home: StreamBuilder(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (context, snapshot) {
//           if (!snapshot.hasData) {
//             return RegisterView();
//           } else if (snapshot.connectionState == ConnectionState.waiting) {
//             return Loader();
//           }
//           return StreamBuilder(
//             stream: FirebaseFirestore.instance
//                 .collection("users")
//                 .doc(FirebaseAuth.instance.currentUser!.uid)
//                 .snapshots(),
//             builder: (context, snapshot) {
//               final user = FirebaseAuth.instance.currentUser;
//               if (!snapshot.hasData || !snapshot.data!.exists) {
//                 return UsernamePage(
//                   displayName: user!.displayName!,
//                   profilePic: user.photoURL!,
//                   email: user.email!,
//                 );
//               } else if (snapshot.connectionState == ConnectionState.waiting) {
//                 return Loader();
//               } else {
//                 return LandingPage();
//               }
//             },
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:devanasoft_app/authwriter.dart';
import 'package:devanasoft_app/core/widgets/colors.dart';
import 'package:devanasoft_app/firebase_options.dart';
import 'package:devanasoft_app/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DEVANASOFT APP',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      routes: appRoutes,
      home: AuthWrapper(),
    );
  }
}
