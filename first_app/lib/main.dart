import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main(){
  runApp(
    const MaterialApp( // const optimized the performance
      home: Scaffold( // if you and a new line and press control space 
        //backgroundColor: Colors.deepPurple,
        body: GradientContainer( [
          Colors.black,
          Colors.white,
          Colors.lightBlue,
          Colors.red,
        ]),
      ),
    ),
  );  
  ////when you are on widget,
  /// right click and select refactor and this feature help to you
}

