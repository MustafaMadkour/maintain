import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maintain/controllers/onboarding_controller.dart';
import 'package:maintain/core/constants/app_color.dart';
import 'package:maintain/view/widgets/onboarding/onboarding_button.dart';
import 'package:maintain/view/widgets/onboarding/onboarding_dots.dart';
import 'package:maintain/view/widgets/onboarding/onboarding_slider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingController());
    return  const Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: OnBoardingSlider(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  OnBoardingDots(),
                  Spacer(
                    flex: 2,
                  ),
                  OnBoardingButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
