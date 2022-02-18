import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  String text;
  Function() click;
  GridButton(this.text, this.click);

  @override
  Widget build(BuildContext context) {
    var figureIndex = int.parse(text);
    /* return RaisedButton(
      child: Text(
        text,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      onPressed: click,
    );
  } */
    return MaterialButton(
      padding: EdgeInsets.all(8.0),
      textColor: Colors.white,
      splashColor: Colors.greenAccent,
      elevation: 8.0,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/Block_${figureIndex}.png'),
              fit: BoxFit.cover),
        ),
      ),
      // ),
      onPressed: click,
    );
  }
}
