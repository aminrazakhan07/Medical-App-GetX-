import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_getx_app/Screens/HomeScr.dart';
import 'package:medical_getx_app/Widgets/Glassify.dart';
import 'package:medical_getx_app/Widgets/Indecator.dart';
import 'package:medical_getx_app/Widgets/Onboad.dart';

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
          child: GlassifyHelper.glassifyBottom(
            height: 50,
            width: 0,
            borderRadius: BorderRadius.circular(25),
            btnText: Center(
                child: Text('Get Start',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18))),
            onTap: () {
              Get.offAll(HomescrMedi());
            },
          ),

          ///////////  Glassifay
          // CustomButton(
          //   lbl: 'Get Started',
          //   onTap: () {
          //     ///
          //     Get.offAll(const HomescrMedi());
          //     SnackbarHelper.showSnackbar(
          //       title: 'Click',
          //       message: 'Successfully',
          //       position: SnackPosition.BOTTOM,
          //       icon: Icons.home_max,
          //       backgroundColor: Colors.blueAccent,
          //       textColor: Colors.white,
          //     );
          //   },
          // ),
        ));
  }
}
