import 'package:flutter/material.dart';

class Snackbar extends StatelessWidget {
  const Snackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Hello world'),
                  duration: Duration(seconds: 3),
                  action: SnackBarAction(
                      label: "닫기",
                      onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      }
                  ),
                ),
              );
            },
            child: Text("스낵바테스트")
        ),
      )
    );
  }
}
