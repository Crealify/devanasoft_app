import 'package:flutter/material.dart';

Widget trustedCompaniesSection() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
    child: Column(
      children: [
        const Text(
          'Trusted by big and small Business for\nserving them innovative and Scalable\nsolution.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, height: 1.5),
        ),

        const SizedBox(height: 30),

        companyLogo('assets/images/foodmonks.png'),
        const SizedBox(height: 24),

        companyLogo('assets/images/payon.png'),
        const SizedBox(height: 24),

        companyLogo('assets/images/bidhana.png'),
        const SizedBox(height: 24),

        companyLogo('assets/images/doctoroncall.png'),
        const SizedBox(height: 24),

        companyLogo('assets/images/enetpay.png'),
      ],
    ),
  );
}

Widget companyLogo(String imagePath) {
  return Image.asset(imagePath, height: 60, fit: BoxFit.contain);
}
