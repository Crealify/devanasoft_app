import 'package:devanasoft_app/firebase_options.dart';
import 'package:devanasoft_app/landing_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DEVABASOFT APP',
      // theme: ThemeData(
      //   colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      // ),
      home: const LandingPage(),
    );
  }
}
