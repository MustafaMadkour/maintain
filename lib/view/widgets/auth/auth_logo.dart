import 'package:flutter/material.dart';
import 'package:maintain/core/constants/image_assets.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      
      child: Image.asset(
        ImageAsset.appLogo,
        // width: 200,
        // height: 200,
      ),
    );
  }
}
