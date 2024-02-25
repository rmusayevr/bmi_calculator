import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({super.key, required this.bmi});

  final double bmi;

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  late final isUnderweight = widget.bmi < 18.5;
  late final isNormal = widget.bmi >= 18.5 && widget.bmi < 25;
  late final isOverweight = widget.bmi >= 25 && widget.bmi < 30;
  String? result;
  String? interpretation;

  void getResult() {
    if (isUnderweight) {
      result = 'Underweight';
      interpretation =
          'You have a lower than normal body weight. You can try to gain some weight.';
    } else if (isNormal) {
      result = 'Normal';
      interpretation = 'You have a normal body weight. Good job!';
    } else if (isOverweight) {
      result = 'Overweight';
      interpretation =
          'You have a higher than normal body weight. Try to exercise more and watch your diet.';
    } else {
      result = 'Obese';
      interpretation =
          'You have a much higher than normal body weight. You should consult a doctor for assistance.';
    }
  }

  @override
  void initState() {
    getResult();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: const Color(0xff1d1f33),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              result!,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent[400]!,
              ),
            ),
            Text(
              widget.bmi.toStringAsFixed(2),
              style: const TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              interpretation!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
