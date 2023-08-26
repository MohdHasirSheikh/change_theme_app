import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_app/screen/on_boarding_screen.dart';

class SplaceScreen extends StatefulWidget {
  const SplaceScreen({super.key});

  @override
  State<SplaceScreen> createState() => _SplaceScreenState();
}

class _SplaceScreenState extends State<SplaceScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 100), () {
      Get.to(
          curve: Curves.linear,
          transition: Transition.leftToRightWithFade,
          () => const OnboardingScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.blue)),
      ),
    );
  }
}
