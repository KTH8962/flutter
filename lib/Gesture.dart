import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: GeustureWidget(),),
      ),
    );
  }
}


class GeustureWidget extends StatefulWidget {
  const GeustureWidget({super.key});

  @override
  State<GeustureWidget> createState() => _GeustureWidgetState();
}

class _GeustureWidgetState extends State<GeustureWidget> {
  //String text = "기본 텍스트";
  int colorHex = 0xffff9900;
  // Color color = Colors.blue;
  //Widget customWidget = Text("test");
  int type = 1;
  Widget customWidget() {
    Widget? w;
    if(type == 1) {
      w = Icon(Icons.home);
    } else if (type == 2) {
      w = Image.asset("pi.png");
    } else {
      w = Container(width: 50, height: 50, color: Colors.red,);
    }
    return w;
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          //text = "한번 누른거";
          type = 1;
          colorHex = 0xffaaaaaa;
        });
      },
      onDoubleTap: (){
        setState(() {
          //text = "두번 누른거";
          type = 2;
          colorHex = 0xffff0000;
        });
      },
      onLongPress: (){
        setState(() {
          //text = "길게 누른거";
          type = 3;
          colorHex = 0xff00ff00;
        });
      },
      onPanUpdate: (details){
        setState(() {
          //text = "(${details.delta.dx}, ${details.delta.dy})";
          colorHex = 0xff5555ff;
        });
      },
      child: Container(
        width: 200, height: 200,
        color: Color(colorHex),
        child: Center(
          child: customWidget(),
        ),
      ),
    );
  }
}
