import 'package:flutter/material.dart';

class SelectionServices extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  const SelectionServices({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: 150,
                width: 160,
                child: Image.asset(image, fit: BoxFit.cover),
              ),

              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 120),
                child: Container(
                  color: Colors.blueAccent.shade200,
                  height: 03,
                  width: 60,
                ),
              ),
              SizedBox(height: 10),
              Text(
                description,
                maxLines: 4,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
