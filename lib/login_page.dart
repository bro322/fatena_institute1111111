import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  void login() {
    String user = userController.text.trim();
    String pass = passController.text.trim();

    // مبدئياً رح نحدد الحسابات بشكل يدوي
    if (user == "student" && pass == "123") {
      Navigator.pushNamed(context, '/student');
    } else if (user == "teacher" && pass == "123") {
      Navigator.pushNamed(context, '/teacher');
    } else if (user == "admin" && pass == "123") {
      Navigator.pushNamed(context, '/admin');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("❌ اسم المستخدم أو كلمة المرور خطأ")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("تسجيل الدخول")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: userController,
              decoration: const InputDecoration(labelText: "اسم المستخدم"),
            ),
            TextField(
              controller: passController,
              decoration: const InputDecoration(labelText: "كلمة المرور"),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: login,
              child: const Text("تسجيل الدخول"),
            ),
          ],
        ),
      ),
    );
  }
}
