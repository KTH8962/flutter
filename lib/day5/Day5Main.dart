import 'package:flutter/material.dart';
import '../day3/Dialog.dart';
import '../day3/Dialog2.dart';
import '../day3/SecondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("4일차 목록"),
      ),
      body: ListView(
        children: [
          TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondPage(text:'첫 번째 값')
                  ),
                );
              },
              child: Text("첫번째")
          ),
          TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Dialog1()
                  ),
                );
              },
              child: Text("두번째")
          ),
          TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Dialog2()
                  ),
                );
              },
              child: Text("세번째")
          ),
        ],
      )
    );
  }
}
