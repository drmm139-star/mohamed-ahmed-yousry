import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  final bool isArabic;
  final VoidCallback toggleLang;

  HeroSection({required this.isArabic, required this.toggleLang});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      alignment: Alignment.center,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
          SizedBox(height: 20),
          Text(
            isArabic ? 'محمد يسري' : 'Mohamed Yousry',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            isArabic
                ? 'أبني حلولًا تقنية عملية لدعم المؤسسات الحكومية والتعليمية'
                : 'I build practical digital solutions for government and educational institutions',
            style: TextStyle(fontSize: 18, color: Colors.grey[300]),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: toggleLang,
            child: Text(isArabic ? 'Switch to EN' : 'التبديل للعربي'),
          ),
        ],
      ),
    );
  }
}
