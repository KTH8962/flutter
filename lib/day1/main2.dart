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
        appBar: AppBar(
          title: Text("두번째 화면"),
        ),
        body: Center(
          child: Container(
            height: 100, width: 100, color: Colors.red,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.abc_rounded),
              Icon(Icons.access_alarms)
            ],
          ),
        ),
      )
    );
  }
}
