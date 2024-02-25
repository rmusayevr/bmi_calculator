import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
    required this.label,
    required this.onCalculate,
  });

  final String label;
  final void Function() onCalculate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCalculate,
      child: Container(
        color: Colors.pink,
        height: 70,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
