import 'package:flutter/material.dart';

Widget workProcessSection() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Column(
      children: [
        const Text(
          'Work Process Our Experts Do',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        processItem('Analysis', Icons.analytics),
        processItem('Design & Development', Icons.design_services),
        processItem('Deployment', Icons.cloud_upload),
        processItem('Maintenance', Icons.settings),
      ],
    ),
  );
}

Widget processItem(String title, IconData icon) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Row(
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(width: 12),
        Text(title, style: const TextStyle(fontSize: 16)),
      ],
    ),
  );
}
