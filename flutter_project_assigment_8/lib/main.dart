import 'package:flutter/material.dart';
import 'package:flutter_project_assigment_8/Assignment8.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Assignment8(),
    );
  }
}
