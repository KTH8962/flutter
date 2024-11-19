import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Center(child: Text("상단 중앙", style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 80,
              height: 80,
              color: Colors.green,
              child: Center(child: Text("중앙 왼쪽", style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 60,
              height: 60,
              color: Colors.blue,
              child: Center(child: Text("하단 오른쪽", style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
          ),
        ],
      ),
    );
  }
}
