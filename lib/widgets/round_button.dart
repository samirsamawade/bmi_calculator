import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final IconData icon;
  final Function()? onPressed;
  RoundButton({
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(
        icon,
        size: 40,
      ),
      fillColor: Colors.grey,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
    );
  }
}
