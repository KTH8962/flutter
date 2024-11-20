import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          width: 400, height: 400,
          color: Colors.amberAccent,
          child: Stack(
            children: [
              Container(width: 100, height: 100, color: Colors.green,),
              Positioned(child: Container(width: 100, height: 100, color: Colors.red,), top: 50, left: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
