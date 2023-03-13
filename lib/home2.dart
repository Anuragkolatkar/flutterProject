import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  //const MyWidget({super.key});
  String? name;
  MyWidget({Key? key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameValue;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        child: Column(
          children: [
            Text("Email : $name"),
          ],
        ),
      ),
    );
  }
}
