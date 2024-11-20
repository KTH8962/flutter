import 'package:flutter/material.dart';

class Dialog1 extends StatelessWidget {
  const Dialog1({super.key});

  _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("다이얼로그 제목"),
            content: Text("다이얼로그 내용"),
            actions: [
              TextButton(
                  onPressed: (){},
                  child: Text("동의")
              ),
              TextButton(
                  onPressed: (){},
                  child: Text("확인")
              ),
              TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text("취소")
              )
            ],
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
              onPressed: (){
                _showDialog(context);
              },
              child: Text("Dialog")
          ),
        ),
      )
    );
  }
}
