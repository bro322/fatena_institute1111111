import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("صفحة المدير"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("⚙️ إدارة المعهد", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // هون لاحقاً منضيف رفع العلامات
              },
              child: const Text("إضافة/تعديل علامات الطلاب"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // هون لاحقاً منضيف تعديل برنامج الدوام
              },
              child: const Text("تعديل برنامج الطلاب"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // هون لاحقاً منضيف إدارة جدول المدرسين
              },
              child: const Text("تعديل برنامج المعلمين"),
            ),
          ],
        ),
      ),
    );
  }
}
