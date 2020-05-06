import 'package:flutter/material.dart';
//import 'package:project2/app_screens/home.dart';
import './app_screens/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    color: Colors.white,
    title: 'hello',
    home: Scaffold(
      appBar: AppBar(
          title: Text(
        'Growth Testing',
      )),
      body: Home()
    ),
  ));
}
