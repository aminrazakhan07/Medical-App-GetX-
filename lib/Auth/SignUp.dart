// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_getx_app/Auth/LoginScr.dart';
import 'package:medical_getx_app/Widgets/AlreadyHave.dart';
import 'package:medical_getx_app/Widgets/Buttom.dart';
import 'package:medical_getx_app/Widgets/ScackBar.dart';
import 'package:medical_getx_app/Widgets/TextField.dart';
import 'package:medical_getx_app/Widgets/isDoctor.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController textEditin = TextEditingController();
  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign Up Page'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              child: Icon(
                Icons.person,
                color: Colors.blue[800],
                size: 100,
              ),
              radius: 60,
            ),
            IsDoctor(),
            //Name
            SizedBox(height: 20),
            CustomTextField(
              texController: textEditin,
              lblText: 'User Name',
              prefix: Icons.person,
            ),

            //email
            CustomTextField(
              lblText: 'Emailasd',
              prefix: Icons.email,
            ),
            //PassCode
            CustomTextField(
              // prefixIcon: Icons.visibility_off,
              lblText: 'Password',
              obscurs: true,
              prefix: Icons.visibility_off,
            ),
            CustomButton(
              onTap: () {
                SnackbarHelper.showSnackbar(
                  title: 'Sign Up',
                  message: 'Successfully',
                );
              },
              lbl: 'Sing Up',
            ),
            //
            AlreadyAccountCheck(
              onTap: () {
                Get.offAll(const LoginviewPage());
                //
                SnackbarHelper.showSnackbar(
                  title: 'Login Page',
                  message: 'Successfully',
                  position: SnackPosition.BOTTOM,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
