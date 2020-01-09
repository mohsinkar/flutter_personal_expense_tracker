import 'package:flutter/material.dart';
import 'package:fultter_guide/question.dart';
import 'package:fultter_guide/answer.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;


  Quiz(@required this.answerQuestion,@required this.questions,@required this.questionIndex);

  @override
  Widget build(BuildContext context) {

    return Column(
                children: [
                  Question(questions[questionIndex]["questionText"]),
                  ...(questions[questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(answerQuestion, answer);
                  }).toList()
                ],
              );
  }
}
