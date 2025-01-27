import 'package:flutter/material.dart';

class AlreadyAccountCheck extends StatelessWidget {
  final comment;
  final goToPage;
  final VoidCallback onTap;
  const AlreadyAccountCheck(
      {super.key,
      this.comment = 'Already have an account?',
      this.goToPage = ' Login',
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(comment),
        TextButton(
          onPressed: onTap,
          child: Text(
            goToPage,
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
