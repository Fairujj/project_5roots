import 'package:flutter/material.dart';
import 'package:project_5roots/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      home: IntroPage(),
      theme: ThemeData.light(),
    );
  }
}
