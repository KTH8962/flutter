import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  String loginId = '';
  String loginPwd = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                TextField(
                  onChanged: (value){
                    loginId = value;
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
