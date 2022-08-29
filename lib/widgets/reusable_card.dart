import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableCard extends StatelessWidget {
  final Widget? child;

  ReusableCard({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: kActiveCardColour,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
