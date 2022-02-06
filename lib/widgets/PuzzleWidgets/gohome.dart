import 'package:flutter/material.dart';

class GoHome extends StatelessWidget {
  //const GoHome({Key? key}) : super(key: key);
  Function() gohome;

  GoHome(this.gohome);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Home"),
      onPressed: gohome,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
