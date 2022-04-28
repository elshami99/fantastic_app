import 'dart:ffi';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback tryAgain;
  
  
  Result(this.resultScore, this.tryAgain);

  String get resultPhrase{
    
  
    String resultText;
    if (resultScore >= 17) {
      resultText='You Are Dangerous Human';
    }else if (resultScore >=15){
       resultText='You Are Amazing Human';

    }else if (resultScore >=12){
       resultText='You Are Good Human';

    }else{
       resultText='Not Bad!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 70),
          
          child: Column(

            children: [
              Text(resultPhrase,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              SizedBox(height: 30,),
              Text('Your score is ~$resultScore~',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400,),textAlign: TextAlign.center),
              SizedBox(height: 30,),
              Text('cool is it ?? take one more try!!',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: tryAgain, child: const Text('click here(-_-)')),

              
            ],
          ),
        ),
        
    );
  }
}