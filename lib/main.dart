import 'package:arduino_circuit_puzzle_game/Pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Pages/board.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(slidingPuzzle());
}

class slidingPuzzle extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sliding Puzzle',
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}
