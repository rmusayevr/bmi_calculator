import 'package:bmi_calculator/widgets/card_box.dart';
import 'package:bmi_calculator/widgets/label_text.dart';
import 'package:bmi_calculator/widgets/number_text.dart';
import 'package:bmi_calculator/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class WeightAgeBox extends StatelessWidget {
  const WeightAgeBox({
    super.key,
    required this.label,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });

  final String label;
  final int value;
  final void Function() onIncrement;
  final void Function() onDecrement;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CardBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LabelText(label: label),
            NumberText(numberText: '$value'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RoundedButton(
                  icon: Icons.remove,
                  onTap: onDecrement,
                  heroTag: '${label}_decrement',
                ),
                // const SizedBox(width: 10),
                RoundedButton(
                  icon: Icons.add,
                  onTap: onIncrement,
                  heroTag: '${label}_increment',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
