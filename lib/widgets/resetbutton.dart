import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  Function() reset;

  ResetButton(this.reset);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Reset"),
      onPressed: reset,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
