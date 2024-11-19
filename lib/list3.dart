import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // db 데이터 호출 가정
  final List<String> list = [
    "자바", "오라클", "HTML/CSS", "JAVASCRIPT", "FLUTTER"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              // context 현재 위치?
              return ListTile(
                title: Text(list[index]),
                subtitle: Text("asd"),
                onTap: (){
                  print(list[index]);
                },
              );
            }
        ),
      )
    );
  }
}
