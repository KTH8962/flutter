import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  String text;
  SecondPage({required this.text});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('두 번째 페이지')),
      body: Center(
        child: Column(
          children: [
            Text("넘겨받은 값은: $text"),
            ElevatedButton(
              onPressed: () {
                // 이전 페이지로 돌아가기
                Navigator.pop(context);
              },
              child: Text('이전 페이지'),
            ),
          ],
        )
      ),
    );
  }
}