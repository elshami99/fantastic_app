import 'package:flutter/material.dart';
import './result.dart';
import './Quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'What\'s your favorite color?',
      'answer': [
        {'text': 'white', 'score': 5},
        {'text': 'blue', 'score': 4},
        {'text': 'red', 'score': 2},
        {'text': 'green', 'score': 3},
      ],
    },
    {
      'question': 'What\'s your favorite animal?',
      'answer': [
        {'text': 'fox', 'score': 5},
        {'text': 'lion', 'score': 4},
        {'text': 'tiger', 'score': 2},
        {'text': 'dog', 'score': 3},
      ],
    },
    {
      'question': 'What\'s your favorite food?',
      'answer': [
        {'text': 'pizza', 'score': 5},
        {'text': 'burger', 'score': 4},
        {'text': 'chicken', 'score': 3},
        {'text': 'meat', 'score': 3},
      ],
    },
    {
      'question': 'what is your favorite sport?',
      'answer': [
        {'text': 'football', 'score': 5},
        {'text': 'basketball', 'score': 4},
        {'text': 'baseball', 'score': 2},
        {'text': 'tennis', 'score': 3},
      ],
    },
  ];
  int _questionIndex = 0;
  var _totalscore=0;

  void _tryAgain(){
  setState(() {
    
  
    _questionIndex=0;
    _totalscore=0;
    });
  }

  void _answerQuestion(int score) {
    _totalscore+=score;
    setState(() {
    _questionIndex += 1;
    });
    if (_questionIndex < _questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fantastic App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalscore,_tryAgain,),
            
      ),
    );
  }
}
