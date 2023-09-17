import 'package:flutter/material.dart';
import 'package:maintain/core/constants/app_color.dart';

class HomeHeading extends StatelessWidget {
  final String title;
  const HomeHeading({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: AppColor.secondaryColor,
      ),
      textAlign: TextAlign.center,
    );
  }
}
