import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  final bool isArabic;
  ProjectsSection({required this.isArabic});

  final projects = [
    {
      'titleAR': 'نظام إدارة العهد',
      'titleEN': 'Asset Management System',
      'image': 'assets/images/project1.jpg',
    },
    {
      'titleAR': 'نظام بصمة ZKTeco',
      'titleEN': 'ZKTeco Attendance System',
      'image': 'assets/images/project1.jpg',
    },
    {
      'titleAR': 'OCR بطاقة الرقم القومي',
      'titleEN': 'OCR National ID',
      'image': 'assets/images/project1.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      color: Colors.grey[900],
      child: Column(
        children: [
          Text(
            isArabic ? 'المشاريع' : 'Projects',
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
            children: projects
                .map(
                  (p) => ProjectCard(
                    title: isArabic ? p['titleAR']! : p['titleEN']!,
                    imagePath: p['image']!,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  final String title;
  final String imagePath;
  ProjectCard({required this.title, required this.imagePath});

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: 250,
        padding: EdgeInsets.all(15),
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
        child: Column(
          children: [
            Image.asset(
              widget.imagePath,
              width: 200,
              height: 120,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Text(
              widget.title,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
