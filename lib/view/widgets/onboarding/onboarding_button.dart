
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maintain/controllers/onboarding_controller.dart';
import 'package:maintain/core/constants/app_color.dart';

class OnBoardingButton extends GetView<OnBoardingController> {
  const OnBoardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: 40,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        onPressed: () {
          controller.next();
        },
        color: AppColor.primaryColor,
        textColor: AppColor.white,
        child: Text(
          "onboarding_button".tr,
        ),
      ),
    );
  }
}
