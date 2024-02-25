import 'package:bmi_calculator/widgets/age_box.dart';
import 'package:bmi_calculator/widgets/weight_age_box.dart';
import 'package:flutter/material.dart';

class WeightAgeView extends StatelessWidget {
  const WeightAgeView({
    super.key,
    required this.weight,
    required this.onWeightIncrement,
    required this.onWeightDecrement,
  });

  final int weight;
  final void Function() onWeightIncrement;
  final void Function() onWeightDecrement;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        WeightAgeBox(
          label: "WEIGHT",
          value: weight,
          onIncrement: onWeightIncrement,
          onDecrement: onWeightDecrement,
        ),
        const SizedBox(width: 20),
        const AgeBox()
      ],
    );
  }
}
