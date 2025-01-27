import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String lbl;
  final VoidCallback onTap;
  const CustomButton({
    super.key,
    required this.lbl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            lbl,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

////
