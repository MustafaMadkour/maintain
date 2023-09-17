import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maintain/core/constants/route_names.dart';
import 'package:maintain/core/services/services.dart';
import 'package:maintain/data/sources/static/static.dart';

abstract class OnBoardingAbs extends GetxController {
  next();
  onPageChange(int index);
}

class OnBoardingController extends OnBoardingAbs {
  late PageController pageController;
  int currentPage = 0;
  MyServices myServices = Get.find();

  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      myServices.sharedPreferences.setString("step", "1");
      Get.offAllNamed(AppRoutes.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChange(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
