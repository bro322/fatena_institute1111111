import 'package:flutter/material.dart';
import 'login_page.dart';
import 'student_page.dart';
import 'teacher_page.dart';
import 'admin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'معهد فاتنة',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const LoginPage(),
      routes: {
        '/student': (context) => const StudentPage(),
        '/teacher': (context) => const TeacherPage(),
        '/admin': (context) => const AdminPage(),
      },
    );
  }
}
