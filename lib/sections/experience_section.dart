import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  final bool isArabic;
  ExperienceSection({required this.isArabic});

  final experiences = [
    {
      'titleAR': 'مستشفيات جامعة بني سويف',
      'titleEN': 'Beni-Suef University Hospitals',
      'roleAR': 'تطوير الأنظمة الرقمية والتحول الرقمي',
      'roleEN': 'Digital Systems & Process Development',
      'descAR':
          'تحسين التواصل بين الأقسام، أتمتة الإجراءات التشغيلية، وبناء أدوات تقنية لدعم كفاءة العمل.',
      'descEN':
          'Improved interdepartmental communication, automated processes, built tools to enhance workflow efficiency.',
    },
    {
      'titleAR': 'مديرية الشؤون الصحية - بني سويف',
      'titleEN': 'Health Directorate - Beni-Suef',
      'roleAR': 'التدريب ودعم التحول الرقمي',
      'roleEN': 'Training & Digital Transformation Support',
      'descAR':
          'إعداد وتنفيذ برامج TOT، دعم أنظمة الجودة والحوكمة، تدريب فرق العمل على الأدوات الرقمية.',
      'descEN':
          'Delivered TOT programs, supported quality & governance systems, trained staff on digital tools.',
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
            isArabic ? 'الخبرات العملية' : 'Work Experience',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 30),
          Column(
            children: experiences
                .map(
                  (exp) => ExperienceCard(
                    title: isArabic ? exp['titleAR']! : exp['titleEN']!,
                    role: isArabic ? exp['roleAR']! : exp['roleEN']!,
                    description: isArabic ? exp['descAR']! : exp['descEN']!,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  final String title;
  final String role;
  final String description;

  ExperienceCard({
    required this.title,
    required this.role,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[850],
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              role,
              style: TextStyle(fontSize: 16, color: Colors.blueAccent),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(fontSize: 14, color: Colors.grey[300]),
            ),
          ],
        ),
      ),
    );
  }
}
