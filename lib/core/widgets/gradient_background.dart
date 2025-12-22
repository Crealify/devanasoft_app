import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;
  final bool showCurvedHeader;

  const GradientBackground({
    super.key,
    required this.child,
    this.showCurvedHeader = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Gradient
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFE3F2FD), Color(0xFFF5F5F5)],
              ),
            ),
          ),

          // Curved Header
          if (showCurvedHeader)
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 190,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF1E88E5), Color(0xFF1565C0)],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 70),
                      Icon(
                        Icons.mobile_friendly_rounded,
                        color: Colors.white,
                        size: 40,
                      ),

                      // Image.asset(
                      //   "assets/images/devanasoft_logos.png",
                      //   height: 40,
                      // ),
                      const SizedBox(height: 16),

                      const Text(
                        "Welcome to Devanasoft",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          // Content
          SafeArea(child: child),
        ],
      ),
    );
  }
}
