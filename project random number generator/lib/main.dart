import 'package:flutter/material.dart';
import './app_screens/first_screen.dart';
import 'dart:math';

void main(List<String> args) => runApp(MyApp());




class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  new MaterialApp(
      debugShowCheckedModeBanner: false,
          title: 'This is my tittle',
          home: Scaffold(
            appBar: AppBar(title: Text('GrowthTesting'),),
           body: MyWidget(),

           
          )
          );
  }
}


