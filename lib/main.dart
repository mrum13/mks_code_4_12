import 'package:flutter/material.dart';
import 'package:makassar_coding_4_12/pages/detail_page.dart';
import 'package:makassar_coding_4_12/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
