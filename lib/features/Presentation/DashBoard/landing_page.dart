import 'package:devanasoft_app/features/Presentation/ServiceScreens/animated_image_slider.dart';
import 'package:devanasoft_app/features/Presentation/ServiceScreens/selection_services.dart';
import 'package:devanasoft_app/features/Presentation/widgets/copyright_section.dart';
import 'package:devanasoft_app/features/auth/Pages/logout_page.dart';
import 'package:flutter/material.dart';

import '../widgets/about_section.dart';
import '../widgets/application.dart';
import '../widgets/footer_section.dart';
import '../widgets/stats.section.dart';
import '../widgets/tesm_member_sections.dart';
import '../widgets/trusted_company_section.dart';
import '../widgets/workprogress_station.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,

        leadingWidth: 120,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset('assets/images/devanasoft_logos.png'),
        ),

        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LogoutPage()),
              );
            },
            child: const Icon(Icons.menu, color: Colors.blueAccent, size: 40),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            AnimatedImageSlider(),
            SelectionServices(
              title: 'Financial Services',
              description:
                  'Creating private, modern and securechannels to utilize different financial instruments -saving,icons,payments,insurance and trading',
              image: 'assets/images/financialbg.png',
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Divider(thickness: 2, color: Colors.blueAccent),
            ),
            SelectionServices(
              title: 'Agriculture EcoSystem',
              description:
                  'Democratizing the agriculture business towards open markets by empowering Farmers.Market Markers, fls and Governing Body within the community',
              image: 'assets/images/agriculturefinal.png',
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Divider(thickness: 2, color: Colors.blueAccent),
            ),
            SelectionServices(
              title: 'Retail Networks',
              description:
                  'Not only Digital Transformation, but also Modernization to radically cut down the current digital gap and gain early competitive advantage',
              image: 'assets/images/retailfinal.png',
            ),
            SizedBox(height: 20),

            aboutSection(),
            applicationCards(),
            workProcessSection(),
            statsSection(),
            teamMembersSection(),
            trustedCompaniesSection(),
            footerSection(),
            copyrightSection(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
