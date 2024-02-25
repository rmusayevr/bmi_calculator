import 'package:bmi_calculator/widgets/card_box.dart';
import 'package:bmi_calculator/widgets/label_text.dart';
import 'package:flutter/material.dart';

class GenderBox extends StatelessWidget {
  const GenderBox(
      {super.key,
      required this.label,
      required this.icon,
      required this.borderColor,
      required this.onSelect});

  final String label;
  final IconData icon;
  final Color borderColor;
  final void Function() onSelect;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
          onTap: onSelect,
          child: CardBox(
            borderColor: borderColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 100,
                  color: Colors.white,
                ),
                const SizedBox(height: 16),
                LabelText(label: label)
              ],
            ),
          )),
    );
  }
}
