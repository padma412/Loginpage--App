import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/aboutapp.dart';
import 'package:my_app/main.dart';

class NewScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.cyan,
              child: Text('Welcome to HomePage!'),
              elevation: 5,
            ),
          ),
          Card(elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  FlatButton(
                    child: Text('Log Out'),
                    textColor: Colors.deepOrange,
                    onPressed: () {Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (BuildContext context) => MyHomepage()));
                    },
                  ),
                  FlatButton(
                    child: Text('About App'),
                    textColor: Colors.deepPurple,
                    onPressed: () {Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (BuildContext context) => AboutApp()));
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
