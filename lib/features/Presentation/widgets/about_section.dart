// ---------------- ABOUT ----------------
import 'package:flutter/material.dart';

Widget aboutSection() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Column(
      children: const [
        Text(
          'Expertise & Strategic Fintech Company',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'Devanasoft delivers innovative and scalable digital solutions.',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
      ],
    ),
  );
}
