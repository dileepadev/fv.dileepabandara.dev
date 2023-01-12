import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dileepa Bandara',
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.darkTheme,
      home: const HomePage(),
    );
  }
}
