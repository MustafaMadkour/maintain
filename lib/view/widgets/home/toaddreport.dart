import 'package:flutter/material.dart';
import 'package:maintain/core/constants/app_color.dart';

class ToAdd extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const ToAdd({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: MaterialButton(
        // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        onPressed: onPressed,
        color: AppColor.primaryColor,
        textColor: AppColor.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(
          text,
        ),
      ),
    );
  }
}
