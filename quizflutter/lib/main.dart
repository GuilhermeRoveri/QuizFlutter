import 'package:flutter/material.dart';
import 'package:quizflutter/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Debug Banner',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
