import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('About App')
        ),
    body: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
    Container(
    width: double.infinity,
    child: Card(
      color: Colors.deepPurple,
    child: Text('Welcome to About App!',),
      elevation: 5,
    ),
    ),
    Card(child: Container(
    padding: EdgeInsets.all(10),
    child: Column(
    children:<Widget> [
      Text('App Name: Flutter App', ),
      Text('Version: 4.0'),
      Text('Colors: Diffrent colors used'),
      Text('Buttons: FlatButton used'),
    ],),)
    ),
    ],),
    );
  }
}