import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler; //function variable called selectHandler
  final String answerText;

  Answer(this.selectHandler,
      this.answerText); //assigning the value entered in the main.dart file to the selectHandler variable

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        "                                                                                            ",
        style: TextStyle(fontSize: 45),
        textAlign: TextAlign.center,
      ),
      Container(
        width: double
            .infinity, //telling the button to use as much screen width as it can get
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            primary: Colors.white,
            side: BorderSide(
              color: Colors.grey,
              width: 1.5,
            ),
          ),
          onPressed:
              selectHandler, //assiging the slect handler function to the onPressed widget
          child:
              Text(answerText), //This will be changed later in another widget
        ),
      )
    ]);
  }
}
