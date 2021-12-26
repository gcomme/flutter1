import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  _answerQuestion() {
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

    var questions = [
      {
        'questionText': 'What is your name ',
        'answers': [
          'Black',
          'Red',
          'Green ',
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
    return MaterialApp(
      // home: Text('ddddd'),

      home: Scaffold(
        appBar: AppBar(
          title: Text('myDogeee'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
              //style: TextStyle(fontSize: 30),
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
