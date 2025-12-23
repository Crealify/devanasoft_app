import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF1E88E5),
    primary: const Color(0xFF1E88E5),
    secondary: const Color(0xFF4CAF50),
  ),
  useMaterial3: true,
  textTheme: GoogleFonts.poppinsTextTheme(),
);

// Custom gradient backgrounds
class AppGradients {
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFE3F2FD), Color(0xFFF5F5F5)],
  );

  static const LinearGradient blueGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF1E88E5), Color(0xFF1565C0)],
  );

  static const LinearGradient greenGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF4CAF50), Color(0xFF2E7D32)],
  );
}
