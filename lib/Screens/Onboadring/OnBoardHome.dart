import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_getx_app/Screens/HomeScr.dart';
import 'package:medical_getx_app/Widgets/Buttom.dart';
import 'package:medical_getx_app/Widgets/Indecator.dart';
import 'package:medical_getx_app/Widgets/Onboad.dart';
import 'package:medical_getx_app/Widgets/ScackBar.dart';

class Onboardring extends StatefulWidget {
  const Onboardring({super.key});

  @override
  State<Onboardring> createState() => _OnboardringState();
}

class _OnboardringState extends State<Onboardring> {
  var currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.7,
              child: PageView(
                children: [
                  CusOnboarding(
                    image: 'assets/onboard/a1.png',
                    content:
                        'Streamline your health \n management\neffortlessly Elevate your \nhealthcare experience with\n every interaction.',
                  ),
                  CusOnboarding(
                    image: 'assets/onboard/a2.png',
                    content:
                        'Empowering your wellness \n Journey \n Book your doctor`s \n appointment effortlessly!',
                  ),
                  CusOnboarding(
                    image: 'assets/onboard/ai3.jpg',
                    content:
                        'Streamline your health \n management\neffortlessly Elevate your \nhealthcare experience with\n every interaction.',
                  ),
                ],
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
              ),
            ),
            PkgeSmoothIndicator(
              currentPage,
              activeIndex: currentPage,
              itemCount: 3,
              dotColor: Colors.grey,
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: CustomButton(
            lbl: 'Get Started',
            onTap: () {
              ///
              Get.offAll(const HomescrMedi());
              SnackbarHelper.showSnackbar(
                title: 'Click',
                message: 'Successfully',
              );
            },
          ),
        ));
  }
}
