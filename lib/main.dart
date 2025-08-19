import 'package:flutter/material.dart';

void main() {
  runApp(const FatinaInstituteApp());
}

class FatinaInstituteApp extends StatelessWidget {
  const FatinaInstituteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'معهد فاتنة',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('معهد فاتنة للدورات التعليمية'),
      ),
      body: const Center(
        child: Text(
          'أهلاً بك في تطبيق معهد فاتنة',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
