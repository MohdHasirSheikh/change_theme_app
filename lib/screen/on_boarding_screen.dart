import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_app/screen/change_theme.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo_new.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  side: const BorderSide(color: Colors.black),
                ),
                onPressed: () {
                  Get.to(
                      curve: Curves.linear,
                      transition: Transition.fadeIn,
                      () => const ChangeThemeScreen());
                },
                child: const Text(
                  "Continue With App",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                )),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
