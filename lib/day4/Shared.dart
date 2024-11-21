import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SharedWidget(),
    );
  }
}

class SharedWidget extends StatefulWidget {
  const SharedWidget({super.key});

  @override
  State<SharedWidget> createState() => _SharedWidgetState();
}

class _SharedWidgetState extends State<SharedWidget> {
  String textVal = '';
  String? name;
  late SharedPreferences prefs;

  void initState() {
    super.initState();
    _initPrefs();
  }

  readData() async {
    String? savedName = prefs.getString('name');  // 'name' 키로 저장된 값 읽기
    setState(() {
      name = savedName ?? '';  // 값이 없으면 빈 문자열을 기본값으로 설정
    });
  }

  _initPrefs() async {
    prefs = await SharedPreferences.getInstance();
    readData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value){
                textVal = value;
              },
            ),
            ElevatedButton(
                onPressed: () async {
                  await prefs.setString('name', textVal);
                },
                child: Text("저장")
            ),
            Text(name ?? '')
          ],
        ),
      ),
    );
  }
}

