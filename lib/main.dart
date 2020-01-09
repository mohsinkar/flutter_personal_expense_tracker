import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = [
    {
      'questionText': "Whar is your favourite color?",
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': "What is your favourite animal",
      'answers': ['Rabit', 'Lion', 'Elephant', 'Snake']
    },
  ];

void _resetQuiz() {
  setState(() {
    _questionIndex = 0;
  });
}
  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      print(_questionIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                _answerQuestion,
                _questions,
                _questionIndex,
              )
            : Result(_resetQuiz),
      ),
    );
  }
}
