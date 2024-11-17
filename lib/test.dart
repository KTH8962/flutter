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
          title: Text("메뉴"),
          actions: [
            Icon(Icons.facebook, color: Colors.blue),
            SizedBox(width: 20),
            IconButton(
                onPressed: (){
                  print("메세지 전송");
                },
                icon: Icon(Icons.message),
                color: Colors.red,
            ),
            SizedBox(width: 60,)
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("pa.png"),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("홍길동", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        Text("test@test.com", style: TextStyle(color: Colors.white),)
                      ],
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("홈"),
                onTap: (){
                  print("홈으로 이동");
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("설정"),
                onTap: (){
                  print("설정으로 이동");
                },
              )
            ],
          ),
        ),
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: [
              Image.asset(
                'go.png',
                width: 100,
                height: 100,
              ),
              Text("처음이다."),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(
                    width: 20,
                    color: Colors.red
                  ),
                ),
                child: Text("텍스트"),
              ),
              Container(
                color: Colors.grey,
                margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                padding: EdgeInsets.symmetric(horizontal: 150, vertical: 50),
                child: Text("텍스트샘플", style: TextStyle(
                  color: Colors.white
                ),),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.settings),
              Icon(Icons.menu),
              Icon(Icons.favorite),
            ],
          ),
        ),
      )
    );
  }
}
