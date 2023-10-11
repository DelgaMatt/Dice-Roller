import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  // accepting the key parameter and forward it to the superclass {Stateful Widget}
  // widget is constant so we add 'const'
  const DiceRoller({super.key}); //constructor function

  @override
  // informing dart which part of state we're watching
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

// the _ means this class is private - only accessible through this file
class _DiceRollerState extends State<DiceRoller> {
  var activediceimage = 'assets/dice-1.png';

  void rollDice() {
    setState(() {
      activediceimage = 'assets/dice-2.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      //allows us to to place multiple children
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activediceimage,
          width: 200,
        ),
        // const SizedBox(height: 20), //creating an empty widget box in between image and text
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors
                  .white, //Why cant i just access the white font via the TextStyles class listed below?
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text('Roll the Dice'),
        )
      ],
    );
  }
}

// Stateful widgets are split amongst 2 classes. One gets the build method and one gets the createstate method