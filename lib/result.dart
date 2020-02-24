import 'package:flutter/material.dart';
import 'answer.dart';

class Result extends StatelessWidget {
  final int total;

  Result({@required this.total});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text("Congradulations on finishing the quiz.\nYou Scored $total / 15"),
        Answer(
          answerOption: "Reset Quiz",
          onPress: () => print("yay"),
        )
      ]),
    );
  }
}
