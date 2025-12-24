import 'package:flutter/material.dart';

Widget appCard(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        child: ListTile(
          leading: const Icon(Icons.apps, color: Color(0xFF0B2C6A)),
          title: Text(title),
          trailing: ElevatedButton(
            onPressed: () {},
            child: const Text('Learn More'),
          ),
        ),
      ),
    );
  }