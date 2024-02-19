import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Firstpage(),
    );
  }
}
class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome To Page 1"),),
      body: Center(child: Text("Page-1"),),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.navigate_next),
          onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Secondpage()));
      }),
    );
  }
}

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome To Page 2"),),
      body: Center(child: Text("Page-2"),),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.navigate_before),
          onPressed: (){
            Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>Secondpage()));
          }),
    );
  }
}


