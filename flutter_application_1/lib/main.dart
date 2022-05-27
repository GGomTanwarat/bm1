import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/homepage.dart';

void main() {
  runApp(const QuestionApp());
}

class QuestionApp extends StatelessWidget {
  const QuestionApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}





  
