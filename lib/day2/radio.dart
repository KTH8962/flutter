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
        appBar: AppBar(
          title: Text("라디오 버튼"),
        ),
        body: Center(
          child: RadioEvent(),
        ),
      ),
    );
  }
}

class RadioEvent extends StatefulWidget {
  const RadioEvent({super.key});

  @override
  State<RadioEvent> createState() => _RadioEventState();
}

class _RadioEventState extends State<RadioEvent> {
  int? selectValue = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Radio(
              value: 1, groupValue: selectValue,
              onChanged: (value){
                setState(() {
                  selectValue = value;
                });
              }
          ),
          title: Text("1번"),
          onTap: () {
            setState(() {
              selectValue = 1;
            });
          },
        ),
        ListTile(
          leading: Radio(
              value: 2, groupValue: selectValue,
              onChanged: (value){
                setState(() {
                  selectValue = value;
                });
              }
          ),
          title: Text("2번"),
          onTap: () {
            setState(() {
              selectValue = 2;
            });
          },
        ),
        ListTile(
          leading: Radio(
              value: 3, groupValue: selectValue,
              onChanged: (value){
                setState(() {
                  selectValue = value;
                });
              }
          ),
          title: Text("3번"),
          onTap: () {
            setState(() {
              selectValue = 3;
            });
          },
        ),
        Container(
          child: Center(
            child: Text("${selectValue}"),
          ),
        )
      ],
    );
  }
}

