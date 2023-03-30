import 'package:flipcard/homePage.dart';
import 'package:flipcard/main.dart';
import 'package:flipcard/secondPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      routes: {
        'home': (context) => HomePage(),
        'second': (context) => SecondPage()
      },
    );
  }
}
