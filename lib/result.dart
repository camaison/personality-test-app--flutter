import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  final tempraments = const [
    {
      "temprament": "'Choleric!'",
      "summary":
          '''The Choleric Temperament is sometimes referred to as “the doer” personality. Someone with a choleric temperament is usually goal-oriented and good at making decisions. People with a chol-eric personality type are very analytical, logical, and determined. Extremely practical and straightforward, choleric people aren’t necessarily particularly social. They dislike small talk and enjoy deep and meaningful conversations.

Strengths: strong and direct

Possible Weaknesses: argumentative and competitive''',
    },
    {
      "temprament": "Melancholic!",
      "summary":
          '''The Melancholic Temperament is sometimes referred to as “the thinker” personality. Someone with a melancholic temperament tends to be introverted and thoughtful. They tend to be deep-thinkers who are creative and analytical but who also focus on the negative rather than the posi-tive. Melancholic people are usually tidy, conscientious and highly organised.

Strengths: high standards and prone to creativity

Possible Weaknesses: unrealistic expectations and too concerned with perfection''',
    },
    {
      "temprament": "Sanguine!",
      "summary":
          '''The Sanguine Temperament is sometimes referred to as “the talker” personality. Someone with a sanguine temperament tends to be lively, sociable, optimistic, cheerful, and carefree. They love adventure and have a high risk tolerance. Typically, Sanguine people are very poor at tolerating boredom and will seek variety and entertainment. They tend to struggle to complete tasks and are chronically late!

Strengths: open and positive

Possible Weaknesses: talks too much and doesn’t follow through on tasks or obligations''',
    },
    {
      "temprament": "Phlegmatic!",
      "summary":
          '''The Phlegmatic Temperament is sometimes referred to as “the watcher” personality. Someone with a phlegmatic temperament tends to be relaxed and quiet. They are generally friendly, sym-pathetic, easy-going, and tolerant. Phlegmatic people also have a tendency to worry and prefer certainty and stability over change.

Strengths: loyal and accommodating

Possible Weaknesses: indecisive and overly sensitive''',
    },
  ];

  final int finalScore;
  final Function reset;
  String heading;
  String body;

  Result(this.finalScore, this.reset);

  String get resultHead {
    String resultMain;
    if (finalScore >= 24 && finalScore < 41) {
      resultMain = tempraments[0]['temprament'];
    } else if (finalScore >= 42 && finalScore < 60) {
      resultMain = tempraments[1]['temprament'];
    } else if (finalScore >= 61 && finalScore < 79) {
      resultMain = tempraments[2]['temprament'];
    } else {
      resultMain = tempraments[3]['temprament'];
    }
    return resultMain;
  }

  String get resultBody {
    String resultSum;
    if (finalScore >= 24 && finalScore < 41) {
      resultSum = tempraments[0]['summary'];
    } else if (finalScore >= 42 && finalScore < 60) {
      resultSum = tempraments[1]['summary'];
    } else if (finalScore >= 61 && finalScore < 79) {
      resultSum = tempraments[2]['summary'];
    } else {
      resultSum = tempraments[3]['summary'];
    }
    return resultSum;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/cube.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Column(
          children: [
            Text(
              "                                                                                            ",
              style: TextStyle(fontSize: 80),
              textAlign: TextAlign.center,
            ),
            Text(resultHead,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center),
            Text(
              "                                                                                            ",
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            Text(
              resultBody,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
              textAlign: TextAlign.center
              ,
            ),
            Text(
              "                                                                                            ",
              style: TextStyle(fontSize: 45),
              textAlign: TextAlign.center,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                side: BorderSide(color: Colors.grey),
              ),
              onPressed: reset,
              child: Text(
                "Reset Quiz",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        )));
  }
}
