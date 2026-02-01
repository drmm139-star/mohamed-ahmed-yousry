import 'package:flutter/material.dart';
import 'sections/hero_section.dart';
import 'sections/about_section.dart';
import 'sections/services_section.dart';
import 'sections/projects_section.dart';
import 'sections/experience_section.dart';
import 'sections/skills_section.dart';
import 'sections/certifications_section.dart';
import 'sections/gallery_section.dart';
import 'sections/contact_section.dart';

void main() {
  runApp(PortfolioWeb());
}

class PortfolioWeb extends StatefulWidget {
  @override
  _PortfolioWebState createState() => _PortfolioWebState();
}

class _PortfolioWebState extends State<PortfolioWeb> {
  bool isArabic = true;

  void toggleLang() {
    setState(() {
      isArabic = !isArabic;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeroSection(isArabic: isArabic, toggleLang: toggleLang),
              AboutSection(isArabic: isArabic),
              ServicesSection(isArabic: isArabic),
              ProjectsSection(isArabic: isArabic),
              ExperienceSection(isArabic: isArabic),
              SkillsSection(isArabic: isArabic),
              CertificationsSection(isArabic: isArabic),
              GallerySection(isArabic: isArabic),
              ContactSection(isArabic: isArabic),
            ],
          ),
        ),
      ),
    );
  }
}
