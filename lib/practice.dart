import 'dart:html';

import 'package:flutter/material.dart';

class practice extends StatelessWidget {
  const practice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice App"),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Practice App",
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return MyState();
//   }
// }

// class MyState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     String name = "Anurag";
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("My App"),
//       ),
//       body: Center(
//         child: Container(
//           child: Text("Welcome $name"),
//         ),
//       ),
//       drawer: Drawer(),
//     );
//   }
// }
