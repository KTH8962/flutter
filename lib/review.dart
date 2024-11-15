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
          title: Text("전체 복습 예시 문제"),
          actions: [
            Icon(Icons.message),
            SizedBox(width: 20,),
            Icon(Icons.facebook),
            SizedBox(width: 20,),
            Icon(Icons.chair),
            SizedBox(width: 40,),
          ],
        ),
        drawer: Drawer(),
        body: Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('pa.png', width: 100, height: 100,),
                        Text("플러터 첫 수업 복습", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                        Text("flutter는 dart언어를 기반으로 구성되어 있습니다. 한번의 개발로 안드로이드, 애플, 웹, 윈도우 등 다양한 환경에서 서비스하는걸 목표로합니다.", style: TextStyle(fontSize: 14),),
                        Container(
                          child: Text("오늘 배운걸 잘 활용해보세요!", style: TextStyle(color: Colors.white),),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("홈~~"),
              Text("프로필"),
              Text("연락처"),
            ],
          ),
        ),
      )
    );
  }
}
