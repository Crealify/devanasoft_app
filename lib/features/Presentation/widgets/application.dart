import 'package:devanasoft_app/features/Presentation/widgets/appcard.dart';
import 'package:flutter/material.dart';

Widget applicationCards() {
  return Column(
    children: [
      appCard('Web Application'),
      appCard('Mobile Application'),
      appCard('Digital Marketing'),
    ],
  );
}
