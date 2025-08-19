import 'package:flutter/material.dart';

class StudentPage extends StatelessWidget {
  const StudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("صفحة الطالب"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("✅ علاماتي:", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            const Text("- رياضيات: 90"),
            const Text("- عربي: 85"),
            const Text("- إنكليزي: 88"),
            const SizedBox(height: 20),
            const Text("📅 برنامجي الأسبوعي:", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            const Text("- الجمعة: رياضيات"),
            const Text("- السبت: عربي"),
            const Text("- الأحد: إنكليزي"),
          ],
        ),
      ),
    );
  }
}
