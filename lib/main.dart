import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); //appya run pandrathuku method call panerukom
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String Value = 'Test';
  void clickMe() {
    //function create panerukom so intha functionya call pana enaku ithu maranum...
    setState(() {
      Value = "New Project";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <Widget>[
          SafeArea(child: Text('$Value')),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: clickMe,
          )
        ],
      ),
    );
  }
}
