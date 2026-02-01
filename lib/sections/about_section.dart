import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  final bool isArabic;

  AboutSection({required this.isArabic});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      color: Colors.grey[900],
      child: Column(
        children: [
          Text(
            isArabic ? 'من أنا' : 'About Me',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          Text(
            isArabic
                ? 'أنا محمد يسري، متخصص في التحول الرقمي، تطوير الأنظمة، الأتمتة، وبناء الحلول التقنية للمؤسسات الحكومية والتعليمية.'
                : 'I am Mohamed Yousry, a Digital Transformation specialist focused on system development, automation, and building solutions for government and educational institutions.',
            style: TextStyle(fontSize: 18, color: Colors.grey[300]),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
