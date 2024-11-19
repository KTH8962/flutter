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
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.abc),
              title: Text("리스트1!"),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("리스트2!"),
            ),
            ListTile(
              leading: Icon(Icons.facebook),
              title: Text("리스트3!"),
            ),
          ],
        )
      )
    );
  }
}
