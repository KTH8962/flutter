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
        appBar: AppBar(),
        body: Column(
          children: [
            RadioImage(tit: "첫 번째", img: "pa.png", value: 1),
            RadioImage(tit: "두 번째", img: "pi.png", value: 2),
            RadioImage(tit: "세 번째", img: "bugi.png", value: 3),
          ],
        ),
      ),
    );
  }
}

class RadioImage extends StatefulWidget {
  String tit;
  String img;
  int value;
  RadioImage({required this.tit, required this.img, required this.value});

  @override
  State<RadioImage> createState() => _RadioImageState();
}

class _RadioImageState extends State<RadioImage> {
  int? selectValue = 1;

  Widget images(String img) {
    if(selectValue == 1) {
      return Image.asset(img);
    } else if (selectValue == 2){
      return Image.asset(img);
    } else if (selectValue == 3){
      return Image.asset(img);
    } else {
      return SizedBox();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Radio(
              value: widget.value, groupValue: selectValue,
              onChanged: (value){
                setState(() {
                  selectValue = value;
                  print('${selectValue}, ${widget.value}');
                });
              }
          ),
          title: Text(widget.tit),
          onTap: (){
            setState(() {
              selectValue = widget.value;
            });
          },
        ),
        // ListTile(
        //   leading: Radio(
        //       value: 2, groupValue: selectValue,
        //       onChanged: (value){
        //         setState(() {
        //           selectValue = value;
        //         });
        //       }
        //   ),
        //   title: Text("버튼 22"),
        //   onTap: (){
        //     setState(() {
        //       selectValue = 2;
        //     });
        //   },
        // ),
        // ListTile(
        //   leading: Radio(
        //       value: 3, groupValue: selectValue,
        //       onChanged: (value){
        //         setState(() {
        //           selectValue = value;
        //         });
        //       }
        //   ),
        //   title: Text("버튼 33"),
        //   onTap: (){
        //     setState(() {
        //       selectValue = 3;
        //     });
        //   },
        // ),
        // Expanded(
        //     child: Center(
        //       child: images(widget.img),
        //     )
        // )
      ],
    );
  }
}
