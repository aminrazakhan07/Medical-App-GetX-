import 'package:flutter/material.dart';
import 'package:medical_getx_app/Widgets/Buttom.dart';
import 'package:medical_getx_app/Widgets/ScackBar.dart';
import 'package:medical_getx_app/Widgets/TextField.dart';

class ForgetpasswordScr extends StatelessWidget {
  const ForgetpasswordScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Forget Password'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              lblText: 'OTP',
              hint: 'OTP',
              prefix: Icons.visibility_off,
            ),
            CustomButton(
              onTap: () {
                SnackbarHelper.showSnackbar(
                  title: 'Currected',
                  message: 'Successfully',
                );
              },
              lbl: 'Otp Code',
            )
          ],
        ),
      ),
    );
  }
}
