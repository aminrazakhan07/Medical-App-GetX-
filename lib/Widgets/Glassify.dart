// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

// class Glassify extends StatelessWidget {
//   const Glassify({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // backgroundColor: Colors.black,
//         body: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(30),
//             child: Container(
//               height: 200,
//               width: 200,
//               child: Stack(
//                 children: [
//                   BackdropFilter(
//                     filter: ImageFilter.blur(
//                       sigmaX: 2,
//                       sigmaY: 2,
//                     ),
//                     child: Container(),
//                   ),
//                   ////
//                   Container(
//                     height: 50,
//                     width: 100,
//                     decoration: BoxDecoration(
//                         border: Border.all(color: Colors.white),
//                         borderRadius: BorderRadius.circular(30),
//                         gradient: LinearGradient(
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                           colors: [
//                             Colors.blue.withValues(alpha: 0.4),
//                             Colors.blue.withValues(alpha: 0.1),
//                           ],
//                         )),
//                   )
//                 ],
//               ),
//             ),
//           ),

//           ////
//         ],
//       ),
//     ));
//   }
// }

////////// Normal Glassifay

// Widget GlassifyBottom() {
//   return Container(
//     height: 50,
//     width: 100,
//     decoration: BoxDecoration(
//         border: Border.all(color: Colors.white),
//         borderRadius: BorderRadius.circular(30),
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             Colors.blue.withValues(alpha: 0.4),
//             Colors.blue.withValues(alpha: 0.1),
//           ],
//         )),
//   );
// }

//////////////// Glassmorphism

import 'package:flutter/material.dart';

class GlassifyHelper {
  static Widget glassifyBottom({
    final Widget? btnText,
    VoidCallback? onTap, // Optional text or widget for button content
    required final double height,
    required final double width,
    Color borderColor =
        const Color.fromARGB(29, 158, 158, 158), // Default color
    BorderRadius? borderRadius, // Optional border radius
    List<Color> gradientColors = const [
      // Color.fromARGB(31, 2, 195, 255), // Gradient color 1
      Color.fromARGB(121, 2, 145, 255), // Gradient color 2
      Color.fromARGB(113, 7, 27, 255),
      Color.fromARGB(121, 2, 145, 255), // Gradient color 3
      // Color.fromARGB(31, 2, 195, 255), // Gradient color 4
    ],
    Alignment gradientStart = Alignment.topLeft,
    Alignment gradientEnd = Alignment.bottomRight,
    double borderWidth = 2.0, // Default border width
    // Optional onTap callback for InkWell
  }) {
    return InkWell(
      onTap: onTap, // Action when tapped
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: borderWidth),
          borderRadius: borderRadius, // Default radius
          gradient: LinearGradient(
            begin: gradientStart,
            end: gradientEnd,
            colors: gradientColors,
          ),
        ),
        child: Center(child: btnText), // Centered button content
      ),
    );
  }
}
