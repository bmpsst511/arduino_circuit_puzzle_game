import 'dart:async';

import 'package:arduino_circuit_puzzle_game/widgets/PuzzleWidgets/grid.dart';
import 'package:arduino_circuit_puzzle_game/widgets/PuzzleWidgets/menu.dart';
import 'package:arduino_circuit_puzzle_game/widgets/PuzzleWidgets/mytitle.dart';
import 'package:flutter/material.dart';

class Board extends StatefulWidget {
  //const Board({Key? key}) : super(key: key);
  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
  //var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8];
  int move = 0;
  int secondsPassed = 0;

  Timer? timer;
  static const duration = const Duration(seconds: 1);
  bool isActive = false;
  bool once = false;

  @override
  void initState() {
    super.initState();
    numbers.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (timer == null) {
      timer = Timer.periodic(duration, (t) {
        startTime();
      });
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('Learning Layout Tips from Sliding Puzzle'),
        ),
        body: SafeArea(
          child: Container(
            height: size.height,
            color: Colors.blue,
            child: Column(
              children: <Widget>[
                MyTitle(size),
                Grid(numbers, size, clickGrid),
                Menu(reset, move, secondsPassed, size),
              ],
            ),
          ),
        ));
  }

  bool blank0empty = false;
  bool blank1empty = false;
  bool mcuVccAt0 = false;
  bool imuGndAt1 = false;

  void clickGrid(index) {
    if (secondsPassed == 0) {
      isActive = true;
    }

    /******* MCUVCC at blank 0 *******/
    //先判斷位置0是否是空的!
    if (index == 0) {
      blank0empty = true;
    }

    //當MCUVCC在第1格或者第4格，第0格又是空的，那下一步，MCUVCC必定在第0格！
    if ("${numbers[index]} from $index" == "1 from 1" ||
        "${numbers[index]} from $index" == "1 from 3") {
      if (blank0empty) {
        print("MCUVCC at 0");
        mcuVccAt0 = true;
      }
    }
    /******* MCUVCC at blank 0 *******/

    /******* IMUGND at blank 1 *******/
    //先判斷位置1是否是空的
    if (index == 1) {
      blank1empty = true;
    }

    //當IMUGND在第0格,第2格或第4格，第1格又是空的，那下一步，IMUGND必定在第1格！
    if ("${numbers[index]} from $index" == "5 from 0" ||
        "${numbers[index]} from $index" == "5 from 2" ||
        "${numbers[index]} from $index" == "5 from 4") {
      if (blank1empty) {
        print("IMUGND at 1");
        imuGndAt1 = true;
      }
    }
    /******* IMUGND at blank 1 *******/

    /******* PCB Burned *******/
    if (mcuVccAt0 && imuGndAt1) {
      print("PCB Burned");
      checkBurned();
      mcuVccAt0 = false;
      imuGndAt1 = false;
    }
    /******* PCB Burned *******/

    if (index - 1 >= 0 && numbers[index - 1] == 0 && index % 3 != 0 ||
        index + 1 < 9 && numbers[index + 1] == 0 && (index + 1) % 3 != 0 ||
        (index - 3 >= 0 && numbers[index - 3] == 0) ||
        (index + 3 < 9 && numbers[index + 3] == 0)) {
      setState(() {
        numbers[numbers.indexOf(0)] = numbers[index];
        numbers[index] = 0;
        move++;
      });
    }
    checkWin();
  }

  void reset() {
    setState(() {
      numbers.shuffle();
      move = 0;
      isActive = false;
      secondsPassed = 0;
    });
  }

  void startTime() {
    if (isActive) {
      setState(() {
        secondsPassed += 1;
      });
    }
  }

  bool isSorted(List list) {
    int prev = list.first;
    for (var i = 1; i < list.length - 1; i++) {
      int next = list[i];
      if (prev > next) return false;
      prev = next;
    }
    return true;
  }

  void checkWin() {
    if (isSorted(numbers)) {
      isActive = false;
      showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                height: 200,
                child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "You Win!!!",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                        width: 220.0,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Close",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          });
    }
  }

  void checkBurned() {
    if (!once) {
      once = true;
      showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                height: 200,
                child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Tips: When VCC and GND connected each other. It may cause PCB burned!!!",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                        width: 220.0,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Close",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          });
    }
  }
}
