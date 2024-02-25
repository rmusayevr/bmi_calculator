import 'package:bmi_calculator/widgets/weight_age_box.dart';
import 'package:flutter/material.dart';

class AgeBox extends StatefulWidget {
  const AgeBox({super.key});

  @override
  State<AgeBox> createState() => _AgeBoxState();
}

class _AgeBoxState extends State<AgeBox> {
  int age = 21;

  @override
  Widget build(BuildContext context) {
    return WeightAgeBox(
      label: "AGE",
      value: age,
      onIncrement: () {
        setState(() {
          age++;
        });
      },
      onDecrement: () {
        setState(() {
          age--;
        });
      },
    );
  }
}
