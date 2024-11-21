import 'package:flutter/material.dart';
import 'package:flutter1/day4/CountryPicker.dart';
import 'package:flutter1/day4/Toast.dart';
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
              child: Text("qr생성")
          ),
          TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Countrypicker()
                  ),
                );
              },
              child: Text("나라별 전화번호")
          ),
          TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ToastTest()
                  ),
                );
              },
              child: Text("토스트")
          ),
        ],
      )
    );
  }
}
