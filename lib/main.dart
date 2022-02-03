import 'package:bank_sirius/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bank_sirius());
}

// ignore: camel_case_types
class Bank_sirius extends StatelessWidget {
  const Bank_sirius({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}






