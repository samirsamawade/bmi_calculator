import 'package:bmi_calculator/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double result;
  const ResultScreen({Key? key, required this.result}) : super(key: key);

  String _rsultStatus() {
    if (result < 18) {
      return "You're Underweight😔";
    } else if (result < 25) {
      return "You're Healthy Weight😃";
    } else if (result < 30) {
      return "You're Overweight😔";
    } else {
      return "You're Obesity😟";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.grey.shade300,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      result.toStringAsFixed(1),
                      style: TextStyle(
                        fontSize: 56,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      _rsultStatus(),
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomButton(
            onPressed: () {},
            title: "Re-calculate",
          ),
        ],
      ),
    );
  }
}
