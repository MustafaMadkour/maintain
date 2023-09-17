import 'package:flutter/material.dart';

class AuthSubTitle extends StatelessWidget {
  final String subtitle;
  const AuthSubTitle({super.key, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Text(
              subtitle,
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            );
  }
}