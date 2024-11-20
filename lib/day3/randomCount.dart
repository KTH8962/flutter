import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home : MyWidget()
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _RanState();
}

class _RanState extends State<MyWidget> {
  Random random = Random();
  Random rans = Random();
  List<String> imgs = ["bugi.png","go.png", "mu.png" , "pa.png", "pi.png"];
  List<Widget> list = [];
  int num = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    if(list.length == 0) {
      for (int index = 0; index < 10; index++) {
        list.add(
          Positioned(
            left: random.nextDouble() * (width - 150),
            top: random.nextDouble() * (height - 300) + 100,
            child: GestureDetector(
              child: Container(
                width: 80,
                height: 80,
                color: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(imgs[(rans.nextDouble()*5).toInt()], width: 50, height: 50,),
                      Text(
                        (index + 1).toString(),
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              onTap: () {
                setState(() {
                  if(index == num) {
                    list.removeAt(0);
                    num++;
                    if(list.length == 0) num = 0;
                  }
                });
              }
            ),
          ),
        );
      }
    }
    return Scaffold(
      body: Stack(
        children: list,
      ),
    );
  }
}