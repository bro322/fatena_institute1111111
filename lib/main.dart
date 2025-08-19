import 'package:flutter/material.dart';

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
      home: const Scaffold(
        body: Center(
          child: Text(
            "مرحباً بك في معهد فاتنة 🎓",
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
