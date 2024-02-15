import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()) ;
  //runApp(MyApp1());
}


class MyApp extends StatefulWidget {   //dynamic design
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String value = "Welcome";
  void clickme(){
    setState(() {
      value = "Solomon";
    });
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Column(
        children: [
          Text(value),
          FloatingActionButton(
            onPressed: clickme, // Removed const keyword here
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
/*class MyApp1 extends StatelessWidget { //static design
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Text(''),);
  }
}*/





