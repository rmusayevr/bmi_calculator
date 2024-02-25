import 'package:bmi_calculator/pages/onboard_page.dart';
import 'package:bmi_calculator/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const OnboardPage(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff0a0e21),
      appBar: CustomAppBar(title: "BMI CALCULATOR", tag: "splash"),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/images/bmi.png'),
          image: AssetImage('assets/images/bmi.png'),
        ),
      ),
    );
  }
}
