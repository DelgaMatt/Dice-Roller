import 'package:flutter/material.dart';

//---> Dart's an object oriented language
// Define custom widgets as classes
// StatelessWidget comes from flutter import package
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key}); //super refers to the parent class (?) this is a CONSTRUCTOR FUNCTION
  // const GradientContainer({key}): super({key: key}) ^ refactored
  // The key parameter is often used for uniquely identifying widgets, and you can provide a key when creating instances of widgets

  // makes it clear you are overriding a method expected by StatelessWidget
  @override
  // widget is the return value type - required
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 21, 2, 65),
            Color.fromARGB(190, 46, 7, 100),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        // Center widget from Flutter docs
        child: Text(
          "Hello World!",
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  }
}