import 'package:flutter/material.dart';

import './textControl.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  List<Color> _colors = [
    Colors.black,
    Colors.blue,
    Colors.red,
  ];
  List<String> _textList = [
    'sampleText1',
    'helloworld',
    'example',
    'example2',
  ];

  int _colorIndex = 0;
  int _textListIndex = 0;

  void changeColor() {
    setState(() {
      _colorIndex++;
      if (_colorIndex >= _colors.length) {
        _colorIndex = 0;
      }
      _textListIndex++;
      if (_textListIndex >= _textList.length) {
        _textListIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Assignment 1"),
        ),
        body: TextControl(
          textColor: _colors[_colorIndex],
          buttonPressHandler: changeColor,
          displayText: _textList[_textListIndex],
        ),
      ),
    );
  }
}
