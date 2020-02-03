import 'package:flutter/material.dart';
import 'dart:math';

var myNumber = (){Random luckyNmumber = new Random();
                  int myRandomNumber = luckyNmumber.nextInt(50);
                   return myRandomNumber;
                          };


class MyWidget extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.orange,
      
      child: Center(
        child: Text(' Hey My number is${myNumber()} ', style: TextStyle(fontSize: 30.0),),
      )
    );
  }

}
