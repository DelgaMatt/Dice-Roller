import 'package:flutter/material.dart';
import 'package:dice_roller/text_styles.dart';

// 'final' keyword affects individual variables, while 'const' affects the entire object or value to which it's applied
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// ----------> METHOD 1 USING NAMED ARGUMENTS ----->

//---> Dart's an object oriented language
// Define custom widgets as classes
// // StatelessWidget comes from flutter import package
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors}); //creating a required named argument vs an optional positional argument (in text_styles)
  // const GradientContainer({key}): super({key: key}) ^ refactored
  // The key parameter is often used for uniquely identifying widgets, and you can provide a key when creating instances of widgets

  final List<Color> colors;

  // makes it clear you are overriding a method expected by StatelessWidget
  @override
  Widget build(context) {
    // widget is the return value type - required
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: const Center(
            // Center widget from Flutter docs
            child: TextStyles("Hello World!"),
          ),
   );
  }
}




// ----> METHOD 2 USING POSIIONAL ARGUMENTS ----->

// class GradientContainer extends StatelessWidget {
//   const GradientContainer(this.color1, this.color2, {super.key});

//   final Color color1;
//   final Color color2;

//   // makes it clear you are overriding a method expected by StatelessWidget
//   @override
//   Widget build(context) {
//     // widget is the return value type - required
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [color1, color2],
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         // Center widget from Flutter docs
//         child: TextStyles("Hello World!"),
//       ),
//     );
//   }
// }

