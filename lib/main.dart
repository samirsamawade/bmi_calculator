import 'package:flutter/material.dart';

import 'screens/home.dart';

void main(List<String> args) {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF111328),
        scaffoldBackgroundColor: const Color(0xFF383950)
      ),
      home: const HomeScreen(),
    );
  }
}
