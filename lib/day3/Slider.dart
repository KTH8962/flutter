import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SliderWidget(),
    );
  }
}

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Slider value: ${sliderValue.toStringAsFixed(1)}"), // 현재 슬라이더 값 표시
            Slider(
              value: sliderValue,
              min: 0,
              max: 30,
              divisions: 300,
              label: sliderValue.toStringAsFixed(1),
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}