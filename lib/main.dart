// dart apps mostly use Google's Material UI
import 'package:flutter/material.dart';

//void is/as a return type
//main is the entry point in a Dart file
void main() {
  //Initialize and run Application. (Provided by Flutter)
  //Flutter UI's are created by combining & nesting widgets. this creates an object instance of the 'Material UI' widget - The Root widget
  runApp(
    MaterialApp(
      // "home" parameter is used to specify the initial widget/route displayed
      home: Scaffold( // Scaffold widget is typically the app Bar at the top of the screen
        body: GradientContainer()
      ),
    ),
  );
}

//---> Dart's an object oriented language
// Define custom widgets as classes
// StatelessWidget comes from flutter import package
class GradientContainer extends StatelessWidget {
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
          child: const Center( // Center widget from Flutter docs
            child: Text(
              "Hello World!",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
          ),
        );
  }
}
