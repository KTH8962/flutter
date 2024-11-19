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
        body: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              // context 현재 위치?
              return ListTile(
                  title: Text("리스트 $index")
              );
            }
        ),
      )
    );
  }
}
