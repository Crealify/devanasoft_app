import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset('assets/images/devanasoft_logos.png'),
        ),

        actions: const [
          Icon(Icons.menu, color: Colors.blueAccent, size: 40),
          SizedBox(width: 12),
        ],
      ),
      body: SingleChildScrollView(child: Column()),
    );
  }
}
