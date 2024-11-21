import 'package:flutter/material.dart';
import 'package:flutter1/day4/TextFieldReview.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Rating(),
    );
  }
}

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  double starValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("평점 선택하기"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("별점을 선택해주세요!"),
            RatingBar.builder(
                initialRating: 0,
                minRating: 0.5,
                allowHalfRating: true,
                direction: Axis.horizontal,
                itemCount: 5,
                itemSize: 50,
                itemPadding: EdgeInsets.all(3),
                itemBuilder: (context, index) {
                  return Icon(
                    Icons.star,
                    color: Colors.yellow,
                  );
                },
                onRatingUpdate: (rating){
                  starValue = rating;
                }
            ),
            TextButton(
                onPressed: (){
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return RatingDailog(rating: starValue);
                      }
                  );
                },
                child: Text("평점 제출")
            )
          ],
        ),
      ),
    );
  }
}


class RatingDailog extends StatelessWidget {
  double rating;
  RatingDailog({required this.rating});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("평점제출 완료"),
      content: Text("제출한 평점: ${rating} 점"),
      actions: [
        TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text("취소")
        ),
        TextButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Textfieldreview(rating: rating),
                ),
              );
            },
            child: Text("확인")
        ),
      ],
    );
  }
}

