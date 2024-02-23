import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image ListView',
      home: ImageListView(),
    );
  }
}

class ImageListView extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/4465a4c1d71e4ef9886b5dc91c2136af.png',
    'assets/WhatsApp Image 2024-02-23 at 13.12.55.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image ListView'),
      ),
      body: ListView.builder(
        itemCount: imagePaths.length,
        itemBuilder: (_, index) {
          return Expanded(
            child: ListTile(
              title: Image.asset(
                imagePaths[index],
                // width: 500,
                // height: 500,
                fit: BoxFit.cover,
              ),
              onTap: () {
                // Handle image tap event
                print('Tapped image ${index + 1}');
              },
            ),
          );
        },
      ),
    );
  }
}
