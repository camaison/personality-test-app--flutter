import 'dart:ui';

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerFunc;

  Quiz(this.questions, this.questionIndex, this.answerFunc);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/cube.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: new BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: new Container(
                decoration:
                    new BoxDecoration(color: Colors.white.withOpacity(0.0)),
                child: Column(
                  children: [
                    Text(
                      "                                                                                            ",
                      style: TextStyle(fontSize: 70),
                      textAlign: TextAlign.center,
                    ),
                    Question(
                      questions[questionIndex]['questionText'],
                    ),
                    //Elevated Button takes the same arguments as RaisedButton
                    //The onpressed argument takes in a function that will be executed when the button is pressed. We don't have one wiered up yet
                    //The child argument takes in the text widget which displays text on the button
                    ...(questions[questionIndex]['answers']
                            as List<Map<String, Object>>)
                        .map((options) {
                      return Answer(
                          () => answerFunc(options['score']), options['text']);
                    }).toList()
                  ],
                ))));
  }
}
