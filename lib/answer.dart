import 'dart:ffi';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerOption;
  final Function onPress;

  Answer({
    this.answerOption,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 0.0,
      ),
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(
          answerOption,
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        onPressed: onPress,
      ),
    );
  }
}
