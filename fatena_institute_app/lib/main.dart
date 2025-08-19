
import 'package:flutter/material.dart';

void main() {
  runApp(FatenaInstituteApp());
}

class FatenaInstituteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'معهد فاتنة',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('تسجيل الدخول - معهد فاتنة')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: userController, decoration: InputDecoration(labelText: 'اسم المستخدم')),
            TextField(controller: passController, decoration: InputDecoration(labelText: 'كلمة المرور'), obscureText: true),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String user = userController.text;
                if (user == 'طالب') {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => StudentPage()));
                } else if (user == 'معلم') {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => TeacherPage()));
                } else if (user == 'مدير') {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => AdminPage()));
                }
              },
              child: Text('دخول'),
            ),
          ],
        ),
      ),
    );
  }
}

class StudentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('الطالب - معهد فاتنة')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text('📊 العلامات: 85%', style: TextStyle(fontSize: 18)),
          Text('📅 الحضور: 90%', style: TextStyle(fontSize: 18)),
          Text('📚 برنامج الدوام: الجمعة - السبت', style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}

class TeacherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('المعلم - معهد فاتنة')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text('📝 مواعيد الجلسات:', style: TextStyle(fontSize: 18)),
          Text('- الجمعة: 10 صباحاً'),
          Text('- السبت: 12 ظهراً'),
        ],
      ),
    );
  }
}

class AdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('المدير - معهد فاتنة')),
      body: Center(
        child: Text('مرحباً بك أيها المدير 👨‍💼', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
