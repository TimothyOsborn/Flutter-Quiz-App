import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final String question;
  final List<Map<String, Object>> answers;
  final Function incrementIndex;
  final Function addScore;

  Quiz({
    @required this.question,
    @required this.answers,
    @required this.incrementIndex,
    @required this.addScore,
  });

  void _pressHandler({@required int score}) {
    addScore(newScore: score);
    incrementIndex();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questionText: question,
        ),
        ...(answers).map((answer) {
          return Answer(
              answerOption: answer['answer'],
              onPress: () {
                print(answer['points']);
                _pressHandler(score: answer['points'] as int);
              });
        }).toList(),
      ],
    );
  }
}
