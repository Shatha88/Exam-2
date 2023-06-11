import 'package:exam/Pages/MainPage.dart';
import 'package:flutter/material.dart';

import 'Routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: Routes(),
      home: const MainPage(),
    );
  }
}
