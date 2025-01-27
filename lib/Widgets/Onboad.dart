import 'package:flutter/material.dart';

class CusOnboarding extends StatelessWidget {
  final String image;
  final String content;

  const CusOnboarding({super.key, required this.image, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          image,
          // fit: BoxFit.contain,
        ),
        SizedBox(height: 10),
        Text(
          content,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ],
    );
  }
}
