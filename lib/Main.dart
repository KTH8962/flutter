import 'package:flutter/material.dart';
import 'package:flutter1/user/Login.dart';

void main(){
  runApp(Project());
}

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}
