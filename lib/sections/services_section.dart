import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  final bool isArabic;
  ServicesSection({required this.isArabic});

  final services = [
    {
      'titleAR': 'تطوير الأنظمة الرقمية',
      'titleEN': 'Digital System Development',
    },
    {'titleAR': 'أتمتة Google Sheets', 'titleEN': 'Google Sheets Automation'},
    {
      'titleAR': 'أنظمة حضور وبصمة',
      'titleEN': 'Attendance & Biometric Systems',
    },
    {'titleAR': 'تطبيقات Flutter', 'titleEN': 'Flutter Mobile App Development'},
    {
      'titleAR': 'استخراج بيانات OCR',
      'titleEN': 'OCR Data Extraction Solutions',
    },
    {
      'titleAR': 'تصميم الهوية البصرية',
      'titleEN': 'Visual Identity & Media Design',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Column(
        children: [
          Text(
            isArabic ? 'خدماتي' : 'Services',
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
            children: services
                .map(
                  (s) => ServiceCard(
                    title: isArabic ? s['titleAR']! : s['titleEN']!,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatefulWidget {
  final String title;
  ServiceCard({required this.title});

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.all(20),
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.circular(8),
          boxShadow: isHover
              ? [
                  BoxShadow(
                    color: Colors.blueAccent,
                    blurRadius: 12,
                    offset: Offset(0, 5),
                  ),
                ]
              : [],
        ),
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
