import 'package:flutter/material.dart';

class Homee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        color: Colors.blue.shade100,
        child: Column(
          children: [
            Text("Email : "),
          ],
        ),
      ),
    );
  }
}
