import 'package:flutter/material.dart';

class Textfieldreview extends StatefulWidget {
  double rating;
  Textfieldreview({required this.rating});

  @override
  State<Textfieldreview> createState() => _TextfieldreviewState();
}

class _TextfieldreviewState extends State<Textfieldreview> {
  String reviewText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("후기 작성하기",),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("선택한 평점 ${widget.rating}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)
            ),
            Text("후기를 작성해주세요"),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: TextField(
                onChanged: (value) {
                  reviewText = value;
                },
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: "후기를 작성해주세요",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            TextButton(
                onPressed: (){},
                child: Text("후기 제출")
            )
          ],
        ),
      ) ,
    );
  }
}
