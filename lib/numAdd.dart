import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 0;
  var numColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home : Scaffold(
            appBar: AppBar(title : Text('숫자 증가'), backgroundColor: Colors.amberAccent,),
            body : Container(
              child: Column(
                children: [
                  Flexible(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("버튼 누르면 숫자 증가"),
                            Text('$num', style: TextStyle(
                              color : numColor
                            ),)
                          ],
                        ),
                      ),
                      flex: 9),
                  Flexible(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        child: ElevatedButton(
                            onPressed: ()=>{
                              setState(() {
                                if(num % 2 == 0) {
                                  numColor = Colors.blue;
                                } else {
                                  numColor = Colors.red;
                                }
                                num += 1;
                              })
                            },
                            child: Icon(Icons.add)
                        ),
                      ),
                    ),
                    flex: 1,)
                ],
              ),
            )
        )
    );
  }
}