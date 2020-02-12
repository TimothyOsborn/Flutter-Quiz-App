import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int total;

  Result({@required this.total});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Congratualtions on finishing the quiz.\nYou Scored $total / 15',
    ));
  }
}
