import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  final VoidCallback handler;
  final String answer;
  Answer(this.handler,this.answer);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: handler,
          child: Text(answer),
        ),
        
      ],
    );
  }
}



