import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text("탭바 테스트"),
              bottom: TabBar(tabs: [
                Tab(icon: Icon(Icons.person), text: "프로필",),
                Tab(icon: Icon(Icons.diamond), text: "나누기",),
                Tab(icon: Icon(Icons.list), text: "배치",),
              ]),
            ),
            body: TabBarView(children: [
              Image.asset("pa.png"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Container(child: Center(child: Text("왼", style: TextStyle(color: Colors.white),),), color: Colors.green,),),
                  Expanded(child: Container(child: Center(child: Text("오", style: TextStyle(color: Colors.white),),), color: Colors.red,),)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Container(child: Center(child: Text("상단 중앙", style: TextStyle(color: Colors.white),),), width: 100, height: 100, color: Colors.red,)],
                  ),
                  Row(
                    children: [Container(child: Center(child: Text("중앙 왼쪽", style: TextStyle(color: Colors.white),),), width: 70, height: 70, color: Colors.blue,)],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Container(child: Center(child: Text("하단 오른쪽", style: TextStyle(color: Colors.white),),), width: 60, height: 60, color: Colors.green,)],
                  )
                ],
              ),
            ]),
          ),
        )
    );
  }
}
