import 'package:arduino_circuit_puzzle_game/Pages/board.dart';
import 'package:arduino_circuit_puzzle_game/Pages/homePage.dart';
import 'package:arduino_circuit_puzzle_game/widgets/PuzzleWidgets/gohome.dart';
import 'package:flutter/material.dart';

class descPage extends StatelessWidget {
  const descPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Task Description'),
          ),
          body: _descPage()),
    );
  }
}

class _descPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void gohome() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => homePage()));
    }

    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        const ListTile(
            title: Text(
          "Task 1: Wemos D1 mini and BNO055 Layout",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.black,
            decoration: TextDecoration.none,
          ),
        )),
        Card(
          child: Image.asset('assets/Task_1.png'),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                //playLocal();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Board()));
              },
              child: const Text('Go'),
            ),
            GoHome(gohome)
          ],
        )
      ],
    );
  }
}
