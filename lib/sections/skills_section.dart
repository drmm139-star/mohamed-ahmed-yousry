import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  final bool isArabic;
  const SkillsSection({super.key, required this.isArabic});

  final List<Map<String, dynamic>> skills = const [
    {'name': 'Flutter', 'level': 0.9},
    {'name': 'Google Apps Script', 'level': 0.85},
    {'name': 'Automation', 'level': 0.8},
    {'name': 'OCR', 'level': 0.75},
    {'name': 'Project Management', 'level': 0.9},
    {'name': 'Training', 'level': 0.85},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      color: Colors.grey[900],
      child: Column(
        children: [
          Text(
            isArabic ? 'المهارات' : 'Skills',
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          Column(
            children: skills.map((s) {
              final name = s['name'] as String;
              final level = s['level'] as double;
              return SkillBar(name: isArabic ? name : name, level: level);
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class SkillBar extends StatelessWidget {
  final String name;
  final double level;

  const SkillBar({super.key, required this.name, required this.level});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: const TextStyle(color: Colors.white)),
          const SizedBox(height: 5),
          LinearProgressIndicator(
            value: level,
            backgroundColor: Colors.grey[800],
            color: Colors.blueAccent,
            minHeight: 8,
          ),
        ],
      ),
    );
  }
}
