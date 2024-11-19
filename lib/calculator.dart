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
          title: Text("계산기"),
          backgroundColor: Colors.blueAccent,
        ),
        body: calculator(),
      ),
    );
  }
}

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  final List<String> labels = [
  'C', '(', '%', '÷',
  '7', '8', '9', '×',
  '4', '5', '6', '-',
  '1', '2', '3', '+',
  '0', '00', '.', '='
  ];
  dynamic num = 0;

  Widget btn(String label, int index) {
    return OutlinedButton(
      onPressed: (){
        if(label == '='){
          print("결과?");
        } else if(label == 'C') {
          print("초기화");
        } else {
          print(label);
        }
      },
      child: Center(
        child: Text(label, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: index % 4 == 3? Colors.blueAccent : Color(0xffcccccc),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.bottomRight,
          child: Text('$num', style: TextStyle(height: 5, fontSize: 20, fontWeight: FontWeight.bold),),
          padding: EdgeInsets.all(10),
        ),
        Flexible(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5
              ),
              itemCount: labels.length,
              itemBuilder: (context, index) {
                return btn(labels[index], index);
              }
          )
        )
      ],
    );
  }
}

