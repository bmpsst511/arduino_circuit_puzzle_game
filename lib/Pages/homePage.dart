import 'package:arduino_circuit_puzzle_game/Pages/board.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  // add it to your class as a static member
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('HomePage'),
          ),
          body: _homePage()),
    );
  }
}

class _homePage extends StatelessWidget {
  //const _homePage({Key? key}) : super(key: key);
  AudioPlayer audioPlayer = AudioPlayer();
  int play = 1;
  int pause = 0;

  //如果是本都文件将isLocal设为true
  playLocal() async {
    play = await audioPlayer.play('assets/homeMusic.mp3', isLocal: true);
  }

  stop() async {
    pause = await audioPlayer.stop();
    print(pause);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('Play'),
            onPressed: () {
              //playLocal();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Board()));
            },
          ),
          SizedBox(width: 5),
          RaisedButton(
            child: Text("Pause"),
            onPressed: () {
              //stop();
            },
          ),
        ],
      ),
    );
  }
}
