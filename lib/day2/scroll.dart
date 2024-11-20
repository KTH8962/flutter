import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          //scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width, height: 300,
                color: Colors.red,
              ),
              Container(
                width: MediaQuery.of(context).size.width, height: 300,
                color: Colors.green,
              ),
              Container(
                width: MediaQuery.of(context).size.width, height: 300,
                color: Colors.blue,
              )
            ],
          ),
        )
      ),
    );
  }
}
