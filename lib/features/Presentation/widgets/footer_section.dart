import 'package:flutter/material.dart';

import '../ServiceScreens/url_launcher.dart';

Widget footerSection() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(color: Colors.grey.shade300, thickness: 2),
        SizedBox(height: 15),
        // Services
        const Text(
          'Services',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        footerItem('Portfolio Website'),
        footerItem('Set up an account'),
        footerItem('Invoice Creation'),
        footerItem('Get Our Specials'),

        const SizedBox(height: 20),

        // Brands
        const Text(
          'Brands',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        footerItem('Chat24'),
        footerItem('Zoom'),
        footerItem('Alpha Payment'),
        footerItem('Upwork'),

        const SizedBox(height: 20),

        // Support
        const Text(
          'Support',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        footerItem('For Freelancers'),
        footerItem('For Companies'),
        footerItem('For Business'),
        footerItem('General Help'),

        const SizedBox(height: 30),

        // Logo
        Row(
          children: [
            Image.asset('assets/images/devanasoft_logos.png', height: 36),
          ],
        ),

        const SizedBox(height: 16),

        // Company Info
        const Text(
          'DevanaSoft Pvt. Ltd.',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        const Text(
          'Gaurighatnagar, Ward No. 7\nKathmandu, Nepal',
          style: TextStyle(fontSize: 12, height: 1.4),
        ),
        const SizedBox(height: 6),
        const Text(
          'Email: info@devanasoft.com.np',
          style: TextStyle(fontSize: 12),
        ),
        const SizedBox(height: 4),
        const Text(
          'Mobile No: +977-9801132218/19',
          style: TextStyle(fontSize: 12),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.facebook),
              onPressed: openFacebook,
            ),
            const SizedBox(width: 12),
            IconButton(
              icon: const Icon(Icons.computer_outlined),
              onPressed: openLinkedIn,
            ),
            const SizedBox(width: 12),
            IconButton(
              icon: const Icon(Icons.camera_alt),
              onPressed: openInstagram,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget footerItem(String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 6),
    child: Text(
      text,
      style: const TextStyle(fontSize: 12, color: Colors.black54),
    ),
  );
}
