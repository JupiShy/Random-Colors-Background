//Test task made by Sofiia Kyrychok 11.08.2025

import 'package:flutter/material.dart';
import 'package:testapp/constants/app_styles.dart';
import 'package:testapp/screens/home.dart';

void main() {
  runApp(const TestTask());
}

class TestTask extends StatelessWidget {
  const TestTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TestApp',
      theme: ThemeData(
        appBarTheme: AppBarTheme(titleTextStyle: AppStyles.appBarText),
      ),
      home: const HomeScreen(title: 'SolidSoftware test app'),
    );
  }
}
