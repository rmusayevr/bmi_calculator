import 'package:bmi_calculator/widgets/gender_box.dart';
import 'package:flutter/material.dart';

class GenderView extends StatefulWidget {
  const GenderView({super.key});

  @override
  State<GenderView> createState() => _GenderViewState();
}

class _GenderViewState extends State<GenderView> {
  late Color maleBorderColor = Colors.transparent;
  late Color femaleBorderColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GenderBox(
          label: "MALE",
          icon: Icons.male,
          borderColor: maleBorderColor,
          onSelect: () {
            setState(() {
              maleBorderColor = Colors.pink;
              femaleBorderColor = Colors.transparent;
            });
          },
        ),
        const SizedBox(width: 20),
        GenderBox(
          label: "FEMALE",
          icon: Icons.female,
          borderColor: femaleBorderColor,
          onSelect: () {
            setState(() {
              maleBorderColor = Colors.transparent;
              femaleBorderColor = Colors.pink;
            });
          },
        ),
      ],
    );
  }
}
