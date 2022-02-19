import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  var size;

  MyTitle(this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.08,
      padding: EdgeInsets.all(5.0),
      child: Text(
        "Task 1",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: size.height * 0.05,
          color: Colors.white,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
