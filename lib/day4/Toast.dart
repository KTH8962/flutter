import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastTest extends StatelessWidget {
  const ToastTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ToastWidget(),
    );
  }
}

class ToastWidget extends StatelessWidget {
  const ToastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: (){
            Fluttertoast.showToast(
                msg: "This is Center Short Toast",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM_LEFT,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
          },
          child: Text("토스트 버튼")
      ),
    );
  }
}

