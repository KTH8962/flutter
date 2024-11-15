import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //leading: Icon(Icons.menu),
          title: Text("첫번째 화면"),
          backgroundColor: Colors.amberAccent,
          actions: [
            Icon(Icons.home, size: 30, color: Colors.red,),
            SizedBox(width: 50,),
            Icon(Icons.key, size: 30, color: Colors.green,),
            SizedBox(width: 50,),
            Icon(Icons.favorite, size: 30, color: Colors.blue,),
            SizedBox(width: 80,),
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
                      backgroundImage: AssetImage('bugi.png'),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("홍길동", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        Text("test@test.com", style: TextStyle(color: Colors.white),)
                      ],
                    )
                  ],
                )
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
        body: Align(alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("안녕", style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 26, fontWeight: FontWeight.bold)),
              Icon(Icons.exit_to_app, color: Colors.amber, size: 50,),
              ElevatedButton(
                  onPressed: (){}, 
                  child: Text("저장")
              ),
              Icon(Icons.abc_rounded, color: Colors.green, size: 40,)
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: (){
                    print("홈 버튼 클릭");
                  },
                  icon: Icon(Icons.home)
                ),
                Icon(Icons.access_alarms_rounded),
                Icon(Icons.account_balance_wallet),
              ],
            )
        ),
      ) 
    );
  }
}
