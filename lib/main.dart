import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/newscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var userName = prefs.getString('userName');
  print(userName);
  SharedPreferences prefs1 = await SharedPreferences.getInstance();
  var password = prefs1.getString('password');
  print(password);
  runApp(
    MaterialApp(
        home: userName == null && password == null ? MyHomepage() : NewScreen()),
  );
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  String Username;
  String Password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
    ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('Fill the below details'),
              elevation: 5,
            ),
          ),
          Card(elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText:  'Username'),
              onChanged: (val) {
               Username = val;
               if (val.isEmpty) {
                 return 'Enter the Username...';
               }
              }
              ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              onChanged:(val) {
                Password = val;
                if(val .isEmpty) {
                  return 'Enter the Password...';
                }
              }
            ),
            FlatButton(
              child: Text('Log In'),
              textColor: Colors.pink,
              onPressed: ()  async {
                final prefs = await SharedPreferences.getInstance();
                final prefs1 = await SharedPreferences.getInstance();
                Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (BuildContext context) => NewScreen()));

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
