import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    child: IconContent(
                      icon: Icons.male,
                      title: "Male",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    child: IconContent(
                      icon: Icons.female,
                      title: "Female",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "HEIGHT",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: const [
                      Text(
                        "180",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "cm",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  SliderTheme(
                    data: const SliderThemeData(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                      thumbColor: kBottomContainerColour,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 16,
                      ),
                    ),
                    child: Slider(
                      value: 180,
                      min: 10,
                      max: 300,
                      onChanged: (newVal) {},
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "WEIGHT",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "60",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              icon: Icons.remove,
                              onPressed: () {
                                print("item removed");
                              },
                            ),
                            const SizedBox(width: 10),
                            RoundButton(
                              icon: Icons.add,
                              onPressed: () {
                                print("item added");
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "AGE",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "60",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButton(
                              icon: Icons.remove,
                              onPressed: () {
                                print("item removed");
                              },
                            ),
                            const SizedBox(width: 10),
                            RoundButton(
                              icon: Icons.add,
                              onPressed: () {
                                print("item added");
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          RawMaterialButton(
            onPressed: () {
              print("raw material button pressed");
            },
            child: Text(
              "CALCULATE",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            fillColor: kBottomContainerColour,
            constraints: BoxConstraints.tightFor(
              width: double.infinity,
              height: 56,
            ),
          )
        ],
      ),
    );
  }
}
