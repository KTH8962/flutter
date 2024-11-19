import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // db 데이터 호출 가정
  final List<Map<String, dynamic>> products = [
    {
      "image": "pi.png", // 제품 이미지 (이미지 URL)
      "name": "아주좋은 자바 책",
      "price": "20,000원",
      "location": "서울",
    },
    {
      "image": "bugi.png",
      "name": "정말 좋은 오라클 책",
      "price": "25,000원",
      "location": "부산",
    },
    {
      "image": "pa.png",
      "name": "HTML/CSS 입문서",
      "price": "15,000원",
      "location": "부평",
    },
    {
      "image": "mu.png",
      "name": "자바스크립트 마스터",
      "price": "18,000원",
      "location": "대구",
    },
    {
      "image": "go.png",
      "name": "Flutter 재밌다",
      "price": "22,000원",
      "location": "서울",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ListTile(
                leading: Image.asset('${product["image"]}', width: 80,),
                title: Text(product["name"], style: TextStyle(fontWeight: FontWeight.bold),),
                //subtitle: Text("가격: ${product["price"]} \n 판매 위치: ${product["location"]}"),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("가격: ${product["price"]}"),
                    Text("판매 위치: ${product["location"]}"),
                  ],
                ),
                onTap: (){
                  print(product["name"]);
                },
              );
            }
        ),
      )
    );
  }
}
