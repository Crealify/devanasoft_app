import 'package:devanasoft_app/features/Presentation/widgets/teammembercard.dart';
import 'package:flutter/material.dart';

Widget teamMembersSection() {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: Column(
      children: [
        const Text(
          'Team Members',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const Text(
          'Our Enterprise Team Members',
          style: TextStyle(fontSize: 10, color: Colors.black45),
        ),

        const SizedBox(height: 20),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            TeamMemberCard(
              name: 'Dr. Pawan Kumar Sharma',
              role: 'Chairperson',
              imageUrl: 'assets/images/PawanKumar.jpg',
            ),
            TeamMemberCard(
              name: 'Bishnu Maharjan',
              role: 'CEO',
              imageUrl: 'assets/images/Bishnu-Maharjan.jpg',
            ),
            TeamMemberCard(
              name: 'Er. Suresh Kumar Bhattarai',
              role: 'Director',
              imageUrl: 'assets/images/Suresh1.jpg',
            ),
            TeamMemberCard(
              name: 'Roshan Kumar Mahoto',
              role: 'Chief Strategy & Finance Officer',
              imageUrl: 'assets/images/Roshan.jpg',
            ),
            SizedBox(width: 10),
          ],
        ),
      ],
    ),
  );
}
