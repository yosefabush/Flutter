import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: MainPage(),
      ),
    ),
  );
}

class MainPage extends StatefulWidget {
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State {
  // This widget is the root of your application.
  int leftQube = 1;
  int rigthQube = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftQube += 1;
                  print('images/dice$leftQube.png');
                });
              },
              child: Image.asset('images/dice$leftQube.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                rigthQube += 1;
                print('images/dice$rigthQube.png');
              },
              child: Image.asset('images/dice$rigthQube.png'),
            ),
          )
        ],
      ),
    );
  }
}
