import 'package:arduino_circuit_puzzle_game/widgets/PuzzleWidgets/goHome.dart';
import 'package:arduino_circuit_puzzle_game/widgets/PuzzleWidgets/resetbutton.dart';
import 'package:flutter/material.dart';

import 'move.dart';
import 'time.dart';

class Menu extends StatelessWidget {
  Function() reset;
  Function() gohome;
  int move;
  int secondsPassed;
  var size;
  Menu(this.reset, this.gohome, this.move, this.secondsPassed, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ResetButton(reset),
          Move(move),
          Time(secondsPassed),
          GoHome(gohome),
        ],
      ),
    );
  }
}
