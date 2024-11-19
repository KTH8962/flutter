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
        body: Column(
          children: [
            MyWidget(label: "첫번째", img: "pi.png"),
            MyWidget(label: "두번째", img: "bugi.png"),
            MyWidget(label: "세번째", img: "pa.png"),
          ],
        )
      )
    );
  }
}

class MyWidget extends StatefulWidget {
  String label;
  String img;
  MyWidget({required this.label, required this.img});
  // this.label = label; this.img = img;

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Checkbox(
              value: isChecked,
              onChanged: (value){
                setState(() {
                  isChecked = value ?? false;
                });
              }
          ),
          title: Text(widget.label),
        ),
        if(isChecked)
          Container(width: 150, height: 150, child: Image.asset(widget.img),)
      ],
    );
  }
}

