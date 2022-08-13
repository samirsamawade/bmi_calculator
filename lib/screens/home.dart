import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF111328),
        title: const Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    color: const Color(0xFF383950),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    color: const Color(0xFF383950),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              color: const Color(0xFF383950),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    color: const Color(0xFF383950),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    color: const Color(0xFF383950),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
