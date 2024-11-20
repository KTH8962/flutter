import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ImgList();
  }
}

class ImgList extends StatefulWidget {
  const ImgList({super.key});

  @override
  State<ImgList> createState() => _ImgListState();
}

class _ImgListState extends State<ImgList> {
  final List<Map<String, dynamic>> imgLists = [
    {
      "image": "pi.png",
      "title": "아주 강한 포켓몬",
      "desc": "아주 귀엽고 강한 스타팅 포켓몬",
      "type": "전기",
      "isFavorite": false
    },
    {
      "image": "pa.png",
      "title": "아주 강한 포켓몬",
      "desc": "아주 귀엽고 강한 스타팅 포켓몬",
      "type": "불",
      "isFavorite": false
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: imgLists.length,
          itemBuilder: (context, index) {
            final imgList = imgLists[index];
            return  ListTile(
              leading: Image.asset(imgList["image"]),
              title: Text("제목: ${imgList["title"]}", style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("설명: ${imgList["desc"]}"),
                  Text("타입: ${imgList["type"]}")
                ],
              ),
              trailing: IconButton(
                  onPressed: (){
                    setState(() {
                      imgList["isFavorite"] = !imgList["isFavorite"];
                    });
                  },
                  icon: Icon(
                    imgList["isFavorite"] ? Icons.favorite : Icons.favorite_border,
                    color: imgList["isFavorite"] ? Colors.red : null,
                  )
              ),
            );
          }),
      )
    );
  }
}

