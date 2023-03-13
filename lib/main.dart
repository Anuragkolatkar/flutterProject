import 'package:classico/home_page.dart';
import 'package:classico/practice.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light, primaryColor: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      home: practice(),
    );
  }
}
