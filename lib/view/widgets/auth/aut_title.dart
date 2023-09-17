import 'package:flutter/material.dart';
import 'package:maintain/core/constants/app_color.dart';

class AuthTitle extends StatelessWidget {
  final String title;
  const AuthTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineLarge!
          .copyWith(color: AppColor.white),
    );
  }
}
