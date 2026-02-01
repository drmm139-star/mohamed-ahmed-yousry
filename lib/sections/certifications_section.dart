import 'package:flutter/material.dart';

class CertificationsSection extends StatelessWidget {
  final bool isArabic;
  CertificationsSection({required this.isArabic});

  final certifications = [
    {
      'titleAR': 'TOT الإدارة الحديثة',
      'titleEN': 'Modern Management TOT',
      'image': 'assets/images/certificate1.jpg',
    },
    {
      'titleAR': 'NTI Flutter',
      'titleEN': 'NTI Flutter',
      'image': 'assets/images/certificate1.jpg',
    },
    {
      'titleAR': 'ICDL',
      'titleEN': 'ICDL',
      'image': 'assets/images/certificate1.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      color: Colors.grey[800],
      child: Column(
        children: [
          Text(
            isArabic ? 'الشهادات والدورات' : 'Certifications & Training',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 30),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: certifications
                .map(
                  (c) => CertificationCard(
                    title: isArabic ? c['titleAR']! : c['titleEN']!,
                    imagePath: c['image']!,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class CertificationCard extends StatelessWidget {
  final String title;
  final String imagePath;

  CertificationCard({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Image.asset(imagePath, width: 200, height: 120, fit: BoxFit.cover),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
