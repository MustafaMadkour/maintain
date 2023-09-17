import 'package:flutter/material.dart';

class AuthBody extends StatelessWidget {
  final String bodytext;
  const AuthBody({super.key, required this.bodytext});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        bodytext,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
