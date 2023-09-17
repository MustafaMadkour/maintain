import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:maintain/core/constants/app_color.dart';

class AuthOtp extends StatelessWidget {
  final void Function(String code)? onSubmit;
  final void Function(String code)? onChanged;
  const AuthOtp({super.key, this.onSubmit, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      numberOfFields: 5,
      borderRadius: BorderRadius.circular(10),
      focusedBorderColor: AppColor.primaryColor,
      cursorColor: AppColor.primaryColor,
      showFieldAsBox: true,
      onCodeChanged: onChanged,
      onSubmit: onSubmit,
    );
  }
}
