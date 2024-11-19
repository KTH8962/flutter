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
        appBar: AppBar(),
        body: Stack(
          children: [
            Container(height: 150, width: 150, color: Colors.blue,),
            Container(height: 150, width: 150, color: Colors.green, margin: EdgeInsets.all(50),),
            Positioned(child: Container(height: 150, width: 150, color: Colors.red,), top: 100, left: 100,)
          ],
        ),
      ),
    );
  }
}
