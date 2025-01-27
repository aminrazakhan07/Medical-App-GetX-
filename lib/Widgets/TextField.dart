import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? texController;
  final String lblText;
  final IconData? prefix;
  final bool obscurs;
  final String? hint;

  const CustomTextField({
    super.key,
    required this.lblText,
    this.texController,
    this.prefix,
    this.obscurs = false,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25, top: 15),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          TextField(
            controller: texController,
            obscureText: obscurs,
            decoration: InputDecoration(
              label: Text(
                lblText,
              ),
              labelStyle: TextStyle(color: Colors.blue, fontSize: 20),
              hintText: hint,
              hintStyle: TextStyle(color: Colors.grey[300]),
              prefixIcon: Icon(prefix),
              prefixIconColor: Colors.blue,
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.cyan, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 15, horizontal: 12),
            ),
            autofocus: true,
            autocorrect: true,
          ),
        ],
      ),
    );
  }
}
