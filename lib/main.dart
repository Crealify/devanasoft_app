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
      initialRoute: '/splash',
      home: AuthWrapper(),
    );
  }
}
