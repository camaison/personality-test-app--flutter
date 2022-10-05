import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String //adding final tells dart that the variable's value is going to change once but never again after that. This removes the error from the class because it is not supposed to change at all since it inherits a stateless widget
      questionText; //Initializing the variable to store the text from the main file
  //Then we create a constructor to assign our input from the main file to the questionText variable
  Question(
      this.questionText); //This is called in the main file and the function(,method) is exectued
  //Meaning, whatever String value is entered in here in the main file is automatically assigned to questionText
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(fontSize: 30, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    ); //This returns the question in the Text Widget like how it appears in the main file at the moment
  }
}
