import 'package:flutter/material.dart';

Widget copyrightSection() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
    decoration: const BoxDecoration(
      border: Border(top: BorderSide(color: Colors.black12)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Links row
        Row(
          children: const [
            Text(
              'Privacy policy',
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
            SizedBox(width: 16),
            Text(
              'Privacy policy-safari',
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
          ],
        ),

        const SizedBox(height: 8),

        // Terms
        const Text(
          'Terms and Conditions',
          style: TextStyle(fontSize: 12, color: Colors.black54),
        ),

        const SizedBox(height: 8),

        // Copyright
        const Text(
          '© 2023 Copyright, All Rights Reserved by DevanaSoft Pvt. Ltd.',
          style: TextStyle(fontSize: 12, color: Colors.black54),
        ),
      ],
    ),
  );
}
