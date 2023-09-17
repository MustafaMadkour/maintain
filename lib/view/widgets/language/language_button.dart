import 'package:flutter/material.dart';
import 'package:maintain/core/constants/app_color.dart';

class LanguageButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const LanguageButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        height: 40,
        onPressed: onPressed,
        color: AppColor.primaryColor,
        textColor: AppColor.white,
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
