import 'package:bmi_calculator/widgets/card_box.dart';
import 'package:bmi_calculator/widgets/label_text.dart';
import 'package:bmi_calculator/widgets/number_text.dart';
import 'package:flutter/material.dart';

class HeightView extends StatelessWidget {
  const HeightView({
    super.key,
    required this.onSlide,
    required this.height,
  });

  final void Function(double) onSlide;
  final double height;

  @override
  Widget build(BuildContext context) {
    return CardBox(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const LabelText(label: "HEIGHT"),
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          mainAxisAlignment: MainAxisAlignment.center,
          textBaseline: TextBaseline.ideographic,
          children: [
            NumberText(numberText: height.toStringAsFixed(0)),
            const LabelText(label: 'cm'),
          ],
        ),
        SliderTheme(
            data: SliderThemeData(
              thumbColor: Colors.pink,
              activeTrackColor: Colors.white,
              inactiveTrackColor: Colors.grey.shade700,
              trackHeight: 1,
            ),
            child: Slider(
              value: height,
              min: 120,
              max: 220,
              onChanged: onSlide,
            ))
      ],
    ));
  }
}
