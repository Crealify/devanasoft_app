import 'dart:async';
import 'package:flutter/material.dart';

class AnimatedImageSlider extends StatefulWidget {
  const AnimatedImageSlider({super.key});

  @override
  State<AnimatedImageSlider> createState() => _AnimatedImageSliderState();
}

class _AnimatedImageSliderState extends State<AnimatedImageSlider> {
  final List<String> images = [
    'assets/images/backgroud1.jpeg',
    'assets/images/backgroud2.jpeg',
    'assets/images/background2.png',
  ];

  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 2), (_) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % images.length;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: SizedBox(
          height: 450,
          width: 360,
          child: Column(
            children: [
              const SizedBox(height: 12),

              // IMAGE
              SizedBox(
                height: 260,
                width: 300,
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  transitionBuilder: (child, animation) {
                    return FadeTransition(
                      opacity: animation,
                      child: ScaleTransition(scale: animation, child: child),
                    );
                  },
                  child: ClipRRect(
                    key: ValueKey(_currentIndex),
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      images[_currentIndex],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // TITLE
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "Connecting payments with the retail channel",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26, // ✅ FIXED
                  ),
                  maxLines: 2,
                ),
              ),

              const SizedBox(height: 8),

              // DESCRIPTION
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "Driving the digital transformation for the retail ecosystem and sustainable growth while expanding payments to different retail sectors.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                  maxLines: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
