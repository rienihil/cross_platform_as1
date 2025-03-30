import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String displayText = "Hello World!";
  Color backgroundColor = Colors.white;

  void addText() {
    setState(() {
      displayText = "Hello World!!!";
    });
  }

  void removeText() {
    setState(() {
      displayText = "";
    });
  }

  void changeBackgroundColor() {
    setState(() {
      if (backgroundColor == Colors.white){
        backgroundColor = Colors.yellow;
      }
      else
        {
          backgroundColor = Colors.white;
        }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(displayText, style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: addText,
              child: Text('Show Text'),
            ),
            ElevatedButton(
              onPressed: removeText,
              child: Text('Remove Text'),
            ),
            ElevatedButton(
              onPressed: changeBackgroundColor,
              child: Text('Change Color'),
            ),
          ],
        ),
      ),
    );
  }
}
