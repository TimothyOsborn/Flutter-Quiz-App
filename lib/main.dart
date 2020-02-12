import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  static const List<Map<String, Object>> _questions = [
    {
      'question': 'What\'s your favourite colour?',
      'answers': [
        {
          'answer': 'Blue',
          'points': 5,
        },
        {
          'answer': 'Red',
          'points': 2,
        },
        {
          'answer': 'Green',
          'points': 4,
        },
        {
          'answer': 'Yellow',
          'points': 1,
        },
        {
          'answer': 'Purple',
          'points': 3,
        },
      ],
    },
    {
      'question': 'What\'s the flying something of some type of swallow?',
      'answers': [
        {
          'answer': '10 coconuts',
          'points': 1,
        },
        {
          'answer': 'I don\'t know',
          'points': 3,
        },
        {
          'answer': 'What kind of Swallow?',
          'points': 5,
        },
      ],
    },
    {
      'question': 'Who is the best Cat in the world?',
      'answers': [
        {
          'answer': 'Garfield',
          'points': 1,
        },
        {
          'answer': 'Felix',
          'points': 2,
        },
        {
          'answer': 'Ginger',
          'points': 5,
        },
        {
          'answer': 'Melon',
          'points': 4,
        },
      ],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  var _questionIndex = 0;
  int score = 0;

  void _addScore({
    @required int newScore,
  }) {
    setState(() {
      score += newScore;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        backgroundColor: Colors.blueGrey,
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              question: _questions[_questionIndex]['question'],
              answers: _questions[_questionIndex]['answers'],
              incrementIndex: _answerQuestion,
              addScore: _addScore,
            )
          : Result(total: score),
    ));
  }
}
