import 'package:devanasoft_app/features/Presentation/widgets/stats_items.dart';
import 'package:flutter/material.dart';

Widget statsSection() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(vertical: 30),
    decoration: const BoxDecoration(
      gradient: LinearGradient(colors: [Color(0xFF0B2C6A), Color(0xFF1E88E5)]),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        statItem('10+', 'Years'),
        statItem('300+', 'Clients'),
        statItem('40+', 'Team'),
        statItem('50+', 'Projects'),
      ],
    ),
  );
}
