import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// Widget pageIndecator(dynamic currentPage) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       currentPage == 0
//           ? Container(
//               height: 10,
//               width: 20,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: Colors.blue,
//               ),
//             )
//           : Icon(
//               Icons.circle_outlined,
//               color: Colors.lightBlue,
//               size: 10,
//             ),
//       currentPage == 1
//           ? Container(
//               height: 10,
//               width: 20,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: Colors.blue,
//               ),
//             )
//           : Icon(
//               Icons.circle_outlined,
//               color: Colors.blue,
//               size: 10,
//             ),
//       currentPage == 2
//           ? Container(
//               height: 10,
//               width: 20,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: Colors.blue,
//               ),
//             )
//           : Icon(
//               Icons.circle_outlined,
//               color: Colors.blue,
//               size: 10,
//             )
//     ],
//   );
// }

/////////////

class PkgeSmoothIndicator extends StatelessWidget {
  final int activeIndex;
  final int itemCount;
  final Color? dotColor;
  final IndicatorEffect? effectop;

  const PkgeSmoothIndicator(
    int currentPage, {
    super.key,
    required this.activeIndex,
    required this.itemCount,
    this.dotColor,
    this.effectop,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: itemCount,
      effect: effectop ??
          JumpingDotEffect(
            paintStyle: PaintingStyle.stroke,
            activeDotColor: Colors.blue,
            dotColor: dotColor ?? Colors.grey,
            dotHeight: 16,
            dotWidth: 16,
            jumpScale: 0.7,
            verticalOffset: 15,
          ),
      /////
      //     SwapEffect(
      //   paintStyle: PaintingStyle.stroke,
      //   activeDotColor: Colors.blue,
      //   dotColor: Colors.grey,
      //   dotHeight: 14,
      //   dotWidth: 14,
      //   spacing: 8,
      // ),

      ////
      // JumpingDotEffect(
      //     paintStyle: PaintingStyle.stroke,
      //     activeDotColor: Colors.blue,
      //     dotColor: Colors.white,
      //     dotHeight: 16,
      //     dotWidth: 16,
      //     jumpScale: .7,
      //     verticalOffset: 15),

      ///////////////
      //     ScaleEffect(
      //   activeDotColor: Colors.blue,
      //   spacing: 8.0,
      //   paintStyle: PaintingStyle.stroke,
      //   // activePaintStyle: PaintingStyle.stroke,
      // ),

      ////
      //     ScrollingDotsEffect(
      //   activeDotColor: Colors.blue,
      //   dotColor: Colors.white70,
      // ),

      ////
      // SlideEffect(
      //     spacing: 8.0,
      //     radius: 8.0,
      //     dotWidth: 16.0,
      //     dotHeight: 10.0,
      //     paintStyle: PaintingStyle.stroke,
      //     strokeWidth: 1.5,
      //     dotColor: Colors.grey,
      //     activeDotColor: Colors.blue),
      /////
      //     ExpandingDotsEffect(
      //   paintStyle: PaintingStyle.stroke,
      //   activeDotColor: Colors.blue, // Active dot کا رنگ
      //   dotColor: Colors.white, // Inactive dot کا رنگ
      //   dotHeight: 10,
      //   dotWidth: 10,
      //   spacing: 8,
      // ),

      ////
      //     WormEffect(
      //         activeDotColor: Colors.blue,
      //         dotColor:
      //             Colors.white70), // your preferred effect
      // onDotClicked: (index) {}

      ////
      //     WormEffect(
      //   activeDotColor: Colors.blue,
      //   dotColor: Colors.white60, // Inactive dot کا رنگ
      //   dotHeight: 14,
      //   dotWidth: 14,
      // ),
      ////
    );
  }
}
