import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QRWidget(),
    );
  }
}

class QRWidget extends StatefulWidget {
  const QRWidget({super.key});

  @override
  State<QRWidget> createState() => _QRWidgetState();
}

class _QRWidgetState extends State<QRWidget> {
  String url = "www.naver.com";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder()
              ),
              onChanged: (value){
                setState(() {
                  url = value;
                });
              },
            ),
            QrImageView(
              data: url,
              version: QrVersions.auto,
              size: 200,
            ),
          ],
        )
      ),
    );
  }
}
