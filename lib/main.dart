import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'questionText': 'What is your name ',
      'answers': [
        'Black',
        'White'
      ],
    },
    {
      'questionText': 'I hate your dog',
      'answers': [
        '73824',
        '12321',
        '532432 ',
        '435345'
      ],
    }
  ];

  var _questionIndex = 0;

  _answerQuestion() {
    if (_questionIndex < _questions.length) {
      print('No more questions i..f..');
    }

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    /* var questions = [
      'Whats your color?',
      'whats your animal',
      'whats your ddasa',
      'whats your f3ee',
      'whats your aklska7',
    ];
*/

    return MaterialApp(
      // home: Text('ddddd'),

      home: Scaffold(
        appBar: AppBar(
          title: Text('myDogeee'),
        ),
        body: _questionIndex < _questions.length ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex, questions: _questions) : Result(),
      ),
    );
  }
}
