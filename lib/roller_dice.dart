import 'dart:math';

import 'package:flutter/material.dart';

final randomize = Random();

class RollerDice extends StatefulWidget {
  const RollerDice({super.key});

  @override
  State<RollerDice> createState() => _RollerDiceState();
}

class _RollerDiceState extends State<RollerDice> {
  var activeDiceNumber = 2;

  rollDice() {
    setState(() {
      activeDiceNumber = randomize.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/dice-$activeDiceNumber.png',
        width: 200,
      ),
      // const SizedBox(
      //   height: 40,
      // ),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.only(top: 20),
          foregroundColor: Colors.white,
          textStyle: const TextStyle(fontSize: 28),
        ),
        child: const Text('Roll Dice now'),
      )
    ]);
  }
}

// import 'package:flutter/material.dart';

// class RollerDice extends StatefulWidget {
//   const RollerDice({super.key});

//   @override
//   State<RollerDice> createState() {
//     return _RollerDiceState();
//   }
// }

// class _RollerDiceState extends State<RollerDice> {
//   var activeDice = 'assets/images/dice-1.png';

//   void rollDice() {
//     setState(() {
//       activeDice = 'assets/images/dice-4.png';
//     });
//   }

//   @override
//   Widget build(context) {
//     return Column(mainAxisSize: MainAxisSize.min, children: [
//       Image.asset(
//         activeDice,
//         width: 200,
//       ),
//       // const SizedBox(
//       //   height: 40,
//       // ),
//       TextButton(
//         onPressed: rollDice,
//         style: TextButton.styleFrom(
//           padding: const EdgeInsets.only(top: 20),
//           foregroundColor: Colors.white,
//           textStyle: const TextStyle(fontSize: 28),
//         ),
//         child: const Text('Roll Dice now'),
//       )
//     ]);
//   }
// }
