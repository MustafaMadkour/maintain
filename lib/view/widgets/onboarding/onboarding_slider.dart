
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maintain/controllers/onboarding_controller.dart';
import 'package:maintain/core/constants/app_color.dart';
import 'package:maintain/data/sources/static/static.dart';

class OnBoardingSlider extends GetView<OnBoardingController> {
  const OnBoardingSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChange(value);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Image.asset(
            height: 300,
            onBoardingList[i].image!,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            onBoardingList[i].title!,
            style: const TextStyle(
              fontFamily: "Lateef",
              color: AppColor.black,
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: "Lateef",
                height: 1.5,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          )
        ],
      ),
    );
  }
}
