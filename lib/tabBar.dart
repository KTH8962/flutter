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
              title: Text("탭바 테스트",),
              bottom: TabBar(tabs: [
                Tab(icon: Icon(Icons.home), text: "홈"),
                Tab(icon: Icon(Icons.search), text: "검색"),
                Tab(icon: Icon(Icons.person_2), text: "프로필")
              ]),
            ),
            body: TabBarView(children: [
              Text("홈 화면"),
              Text("검색 화면"),
              Text("프로필 화면"),
            ]),
            bottomNavigationBar: BottomAppBar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.home)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
                ],
              ),
            ),
          ),
        )
    );
  }
}
