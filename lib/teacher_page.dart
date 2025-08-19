import 'package:flutter/material.dart';

class TeacherPage extends StatelessWidget {
  const TeacherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("صفحة المعلّم"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("📅 جدول الحصص:", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            const Text("- الجمعة: 9:00 - 11:00 (رياضيات)"),
            const Text("- السبت: 12:00 - 2:00 (عربي)"),
            const Text("- الأحد: 10:00 - 12:00 (إنكليزي)"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // لاحقاً منضيف تذكير بالتنبيه أو النغمة
              },
              child: const Text("تفعيل التذكير"),
            )
          ],
        ),
      ),
    );
  }
}
