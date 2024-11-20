import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       body: Row(
         children: [
           // Flexible(child: Container(color:Colors.blue), flex: 3,),
           // Flexible(child: Container(color:Colors.green), flex: 2,),
           // Flexible(child: Container(color:Colors.red), flex: 3,),
           Expanded(child: Container(color:Colors.blue)),
           Container(width: 200, color:Colors.green),
         ],
       ),
      )
    );
  }
}
