import 'package:flutter/material.dart';
import 'package:hello_world/home.dart';

void main() {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My First App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
