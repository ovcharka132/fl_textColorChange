import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Color textColor;
  final Function buttonPressHandler;
  final String displayText;

  TextControl({this.textColor, this.buttonPressHandler, this.displayText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: MyText(
              color: textColor,
              text: displayText,
            ),
          ),
          RaisedButton(
            child: Text("Change color"),
            onPressed: buttonPressHandler,
          ),
        ],
      ),
    );
  }
}

class MyText extends StatelessWidget {
  final Color color;
  final String text;

  MyText({this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 25.0,
        color: color,
      ),
    );
  }
}
