import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RatingBar.builder(
            initialRating: 3,
            minRating: 0.5,
            allowHalfRating: true,
            direction: Axis.horizontal,
            itemCount: 5,
            itemSize: 50,
            itemPadding: EdgeInsets.all(1),
            itemBuilder: (context, index){
              return Icon(
                Icons.star,
                color: Colors.yellow,
              );
            },
            onRatingUpdate: (rating){
              //rating은 이름 마음대로해도 괜찮다.
              //print(rating);
            }
          ),
        ),
      ),
    );
  }
}
