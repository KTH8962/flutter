import 'package:flutter/material.dart';

class Dialog2 extends StatelessWidget {
  const Dialog2({super.key});

  _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            child: Container(
              height: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("타이틀", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  Text("내용",),
                  ElevatedButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text("닫기")
                  )
                ],
              ),
            ),
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
