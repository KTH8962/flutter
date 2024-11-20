import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<dynamic> list = [];

  fnList() async {
    final res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    //final res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    if(res.statusCode == 200) {
      setState(() {
        print(res);
        list = json.decode(res.body);
      });
    } else {}
  }

  // initState에서 fnList 호출
  @override
  void initState() {
    super.initState();
    fnList(); // 위젯이 생성되면 데이터를 불러오기 위해 호출
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              // context는 현재위젯의 정보를 담고있다.
              return ListTile(
                leading: index % 4 == 1 ? Image.asset("pa.png") : index % 4 == 2 ? Image.asset("pi.png") : index % 4 == 3 ? Image.asset("bugi.png") : Image.asset("go.png"),
                title: Text(list[index]["name"]),
              );
            }
        )
      ),
    );
  }
}
