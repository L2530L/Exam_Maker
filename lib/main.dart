import 'package:exam_ai/page/first.dart';
import 'package:flutter/material.dart';

import 'page/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: First()
    );
  }
}
