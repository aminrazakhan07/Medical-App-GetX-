import 'package:flutter/material.dart';

class IsDoctor extends StatefulWidget {
  final String doctor;
  const IsDoctor({super.key, this.doctor = 'Bocome a Doctor'});

  @override
  State<IsDoctor> createState() => _IsDoctorState();
}

class _IsDoctorState extends State<IsDoctor> {
  bool IsDoctor = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.doctor),
        Switch(
            activeColor: Colors.blue,
            value: IsDoctor,
            onChanged: (value) {
              setState(() {
                IsDoctor = value;
              });
            })
      ],
    );
  }
}

//
