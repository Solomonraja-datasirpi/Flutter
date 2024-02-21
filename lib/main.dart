import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("container demo"),backgroundColor: Colors.yellow,),
        body: Container(
          padding: EdgeInsets.all(50),
          child: Text("Its a container"),
          color: Colors.green,
        ),

      ),
    );
  }
}

