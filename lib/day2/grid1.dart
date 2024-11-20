import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 5
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.red,
                child: Center(
                  child: Text("그리드 뷰 $index"),
                ),
              );
            }
        ),
      ),
    );
  }
}
