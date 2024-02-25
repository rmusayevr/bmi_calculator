import 'package:bmi_calculator/pages/result_page.dart';
import 'package:bmi_calculator/widgets/calculate_button.dart';
import 'package:bmi_calculator/widgets/custom_app_bar.dart';
import 'package:bmi_calculator/widgets/gender_view.dart';
import 'package:bmi_calculator/widgets/height_view.dart';
import 'package:bmi_calculator/widgets/weight_age_view.dart';
import 'package:flutter/material.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  double height = 170;
  int weight = 60;
  double bmi = 0;

  void calculateBMI() {
    double heightInMeters = height / 100;
    double calculatedBMI = weight / (heightInMeters * heightInMeters);

    setState(() {
      bmi = calculatedBMI;
    });

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => ResultPage(bmi: bmi)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0a0e21),
      appBar: const CustomAppBar(title: "BMI CALCULATOR", tag: "onboard"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const GenderView(),
              const SizedBox(height: 20),
              HeightView(
                height: height,
                onSlide: (value) => setState(() => height = value),
              ),
              const SizedBox(height: 20),
              WeightAgeView(
                weight: weight,
                onWeightIncrement: () {
                  setState(() {
                    weight++;
                  });
                },
                onWeightDecrement: () {
                  setState(() {
                    weight--;
                  });
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CalculateButton(
        label: 'CALCULATE',
        onCalculate: calculateBMI,
      ),
    );
  }
}
