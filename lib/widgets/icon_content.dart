import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String title;

  IconContent({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 24),
        ),
      ],
    );
  }
}