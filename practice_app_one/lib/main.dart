import 'package:flutter/material.dart';
import './screens/home.dart';

void main(){
  runApp(MaterialApp(
    title: 'Practice App',
    home: Scaffold(
      appBar: AppBar(title: Text('Growth Testing'),),
      body: Home(),
    ),
  ));
}