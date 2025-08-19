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
          children: const [
            Text("✅ علاماتي: 90 / 100", style: TextStyle(fontSize: 20)),
            SizedBox(height: 15),
            Text("📅 الحضور: 85%", style: TextStyle(fontSize: 20)),
            SizedBox(height: 15),
            Text("📊 المستوى: جيد جداً", style: TextStyle(fontSize: 20)),
            SizedBox(height: 15),
            Text("🕘 برنامج الدوام: الجمعة – السبت", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
