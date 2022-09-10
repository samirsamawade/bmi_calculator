import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableCard extends StatelessWidget {
  final Widget? child;
  final bool isSelected;
  final Function()? onPressed;

  ReusableCard({this.child, this.isSelected = false, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: child,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: isSelected ? kActiveCardColour : kInactiveCardColour,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
