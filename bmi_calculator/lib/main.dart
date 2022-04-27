import 'package:flutter/material.dart';
import 'Input_Page.dart';

void main() {
  runApp(MyBMICalculatorApp());
}

class MyBMICalculatorApp extends StatelessWidget {
  const MyBMICalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPages(),
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Color(0XFF0A0E21)),
        scaffoldBackgroundColor: Color(0XFF0A0E21),
      ),
    );
  }
}
