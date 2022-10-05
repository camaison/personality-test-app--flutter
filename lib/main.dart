import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "I get angry easily",
      "answers": [
        {"text": "Strongly Agree", "score": 1},
        {"text": "Agree", "score": 2},
        {"text": "Disagree", "score": 3},
        {"text": "Strongly Disagree", "score": 4}
      ],
    },
    {
      "questionText": "I make people feel welcome",
      "answers": [
        {"text": "Strongly Agree", "score": 4},
        {"text": "Agree", "score": 3},
        {"text": "Disagree", "score": 2},
        {"text": "Strongly Disagree", "score": 1}
      ],
    },
    {
      "questionText": "I radiate joy",
      "answers": [
        {"text": "Strongly Agree", "score": 3},
        {"text": "Agree", "score": 4},
        {"text": "Disagree", "score": 2},
        {"text": "Strongly Disagree", "score": 1}
      ],
    },
    {
      "questionText": "The good life is a peaceful life",
      "answers": [
        {"text": "Strongly Agree", "score": 4},
        {"text": "Agree", "score": 3},
        {"text": "Disagree", "score": 2},
        {"text": "Strongly Disagree", "score": 1}
      ],
    },
    {
      "questionText": "I try to please everyone",
      "answers": [
        {"text": "Strongly Agree", "score": 4},
        {"text": "Agree", "score": 2},
        {"text": "Disagree", "score": 1},
        {"text": "Strongly Disagree", "score": 3}
      ],
    },
    {
      "questionText": "I prefer variety to routine",
      "answers": [
        {"text": "Strongly Agree", "score": 3},
        {"text": "Agree", "score": 4},
        {"text": "Disagree", "score": 2},
        {"text": "Strongly Disagree", "score": 1}
      ],
    },
    {
      "questionText": "I thrive when placed in charge",
      "answers": [
        {"text": "Strongly Agree", "score": 1},
        {"text": "Agree", "score": 2},
        {"text": "Disagree", "score": 3},
        {"text": "Strongly Disagree", "score": 4}
      ],
    },
    {
      "questionText": "I try to outdo others",
      "answers": [
        {"text": "Strongly Agree", "score": 1},
        {"text": "Agree", "score": 2},
        {"text": "Disagree", "score": 3},
        {"text": "Strongly Disagree", "score": 4}
      ],
    },
    {
      "questionText": "I make friends easily",
      "answers": [
        {"text": "Strongly Agree", "score": 3},
        {"text": "Agree", "score": 4},
        {"text": "Disagree", "score": 2},
        {"text": "Strongly Disagree", "score": 1}
      ],
    },
    {
      "questionText": "I tend to feel very hopeless",
      "answers": [
        {"text": "Strongly Agree", "score": 4},
        {"text": "Agree", "score": 2},
        {"text": "Disagree", "score": 1},
        {"text": "Strongly Disagree", "score": 3}
      ],
    },
    {
      "questionText": "I feel comfortable with myself",
      "answers": [
        {"text": "Strongly Agree", "score": 3},
        {"text": "Agree", "score": 2},
        {"text": "Disagree", "score": 1},
        {"text": "Strongly Disagree", "score": 4}
      ],
    },
    {
      "questionText": "I seldom feel blue",
      "answers": [
        {"text": "Strongly Agree", "score": 4},
        {"text": "Agree", "score": 1},
        {"text": "Disagree", "score": 2},
        {"text": "Strongly Disagree", "score": 3}
      ],
    },
    {
      "questionText": "I seldom get mad",
      "answers": [
        {"text": "Strongly Agree", "score": 4},
        {"text": "Agree", "score": 3},
        {"text": "Disagree", "score": 2},
        {"text": "Strongly Disagree", "score": 1}
      ],
    },
    {
      "questionText": "I have a strong need for power",
      "answers": [
        {"text": "Strongly Agree", "score": 1},
        {"text": "Agree", "score": 2},
        {"text": "Disagree", "score": 3},
        {"text": "Strongly Disagree", "score": 4}
      ],
    },
    {
      "questionText": "I am the life of the party",
      "answers": [
        {"text": "Strongly Agree", "score": 3},
        {"text": "Agree", "score": 1},
        {"text": "Disagree", "score": 2},
        {"text": "Strongly Disagree", "score": 4}
      ],
    },
    {
      "questionText": "I struggle to complete tasks and meet deadlines",
      "answers": [
        {"text": "Strongly Agree", "score": 3},
        {"text": "Agree", "score": 2},
        {"text": "Disagree", "score": 4},
        {"text": "Strongly Disagree", "score": 1}
      ],
    },
    {
      "questionText": "I dance when I am alone",
      "answers": [
        {"text": "Strongly Agree", "score": 4},
        {"text": "Agree", "score": 2},
        {"text": "Disagree", "score": 1},
        {"text": "Strongly Disagree", "score": 3}
      ],
    },
    {
      "questionText": "I feel my anxiety overwhelms me",
      "answers": [
        {"text": "Strongly Agree", "score": 3},
        {"text": "Agree", "score": 4},
        {"text": "Disagree", "score": 2},
        {"text": "Strongly Disagree", "score": 1}
      ],
    },
    {
      "questionText": "I don't care much when people insult me",
      "answers": [
        {"text": "Strongly Agree", "score": 1},
        {"text": "Agree", "score": 3},
        {"text": "Disagree", "score": 2},
        {"text": "Strongly Disagree", "score": 4}
      ],
    },
    {
      "questionText": "I like it when people are scared of me",
      "answers": [
        {"text": "Strongly Agree", "score": 1},
        {"text": "Agree", "score": 3},
        {"text": "Disagree", "score": 2},
        {"text": "Strongly Disagree", "score": 4}
      ],
    },
    {
      "questionText": "I am very Competitive",
      "answers": [
        {"text": "Strongly Agree", "score": 1},
        {"text": "Agree", "score": 2},
        {"text": "Disagree", "score": 3},
        {"text": "Strongly Disagree", "score": 4}
      ],
    },
    {
      "questionText": "I am a perfectionist",
      "answers": [
        {"text": "Strongly Agree", "score": 2},
        {"text": "Agree", "score": 1},
        {"text": "Disagree", "score": 4},
        {"text": "Strongly Disagree", "score": 3}
      ],
    },
    {
      "questionText": "I get distracted easily",
      "answers": [
        {"text": "Strongly Agree", "score": 2},
        {"text": "Agree", "score": 4},
        {"text": "Disagree", "score": 3},
        {"text": "Strongly Disagree", "score": 1}
      ],
    },
    {
      "questionText": "I tend to be indecisive",
      "answers": [
        {"text": "Strongly Agree", "score": 4},
        {"text": "Agree", "score": 2},
        {"text": "Disagree", "score": 3},
        {"text": "Strongly Disagree", "score": 1}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalscore = 0;

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void _answer(int score) {
    _totalscore += score;
    print(_totalscore);

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Personality Test"),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(_questions, _questionIndex, _answer)
          : Result(_totalscore, _reset),
    ));
  }
}
