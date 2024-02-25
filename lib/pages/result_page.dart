import 'package:bmi_calculator/pages/onboard_page.dart';
import 'package:bmi_calculator/widgets/calculate_button.dart';
import 'package:bmi_calculator/widgets/custom_app_bar.dart';
import 'package:bmi_calculator/widgets/result_view.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.bmi,
  });

  final double bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0a0e21),
      appBar: const CustomAppBar(title: "BMI CALCULATOR", tag: "result"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Your Result",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
            const SizedBox(height: 20),
            Result(bmi: bmi),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
        label: 'RE-CALCULATE',
        onCalculate: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const OnboardPage()),
          );
        },
      ),
    );
  }
}
