import 'package:flutter/material.dart';

class GallerySection extends StatelessWidget {
  final bool isArabic;
  GallerySection({required this.isArabic});

  final images = [
    'assets/images/project1.jpg',
    'assets/images/certificate1.jpg',
    // أضف باقي الصور هنا
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      color: Colors.grey[900],
      child: Column(
        children: [
          Text(
            isArabic ? 'معرض الصور والفيديو' : 'Gallery',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 30),
          Wrap(
            spacing: 15,
            runSpacing: 15,
            children: images
                .map(
                  (img) => Image.asset(
                    img,
                    width: 200,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
