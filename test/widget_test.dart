import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:portfolio_web/main.dart';

void main() {
  testWidgets('App renders ContactSection', (WidgetTester tester) async {
    // Build the PortfolioWeb app
    await tester.pumpWidget(const PortfolioWeb());

    // Verify that ContactSection widget is present
    expect(find.text('تواصل معي'), findsOneWidget); // بالعربية
    expect(
      find.text('Contact Me'),
      findsNothing,
    ); // لان isArabic = true افتراضياً
  });
}
