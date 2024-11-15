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
  bool types = false;
  var pos = MainAxisAlignment.center;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: pos,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 200),
                ),
                onPressed: (){
                  setState(() {
                    types = !types;
                    if(types) {
                      pos = MainAxisAlignment.start;
                    } else {
                      pos = MainAxisAlignment.center;
                    }
                  });
                },
                child: Text("안녕?"),
              )
            ],
          ),
        ),
      )
    );
  }
}
