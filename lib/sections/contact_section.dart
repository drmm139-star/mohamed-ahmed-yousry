import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  final bool isArabic;
  const ContactSection({super.key, required this.isArabic});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      color: Colors.grey[800],
      child: Column(
        children: [
          Text(
            isArabic ? 'تواصل معي' : 'Contact Me',
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          Column(
            children: const [
              ContactRow(label: 'Telegram', url: 'https://t.me/MYousry2030'),
              ContactRow(label: 'Email', url: 'mailto:example@email.com'),
              ContactRow(label: 'Phone', url: 'tel:+201210288371'),
            ],
          ),
        ],
      ),
    );
  }
}

class ContactRow extends StatelessWidget {
  final String label;
  final String url;
  const ContactRow({super.key, required this.label, required this.url});

  Future<void> _launchURL(BuildContext context, String url) async {
    final uri = Uri.parse(url);

    try {
      if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
        // استخدام context بعد async gap يكون مؤمن بالـ mounted
        if (context.mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('فشل في فتح الرابط: $label')));
        }
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('حدث خطأ: $e')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () => _launchURL(context, url),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.link, color: Colors.blueAccent),
            const SizedBox(width: 10),
            Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
