import 'package:classico/name_model.dart' show NamesModel;
import 'package:flutter/material.dart';

class Json extends StatefulWidget {
  const Json({super.key});

  @override
  State<Json> createState() => _JsonState();
}

class _JsonState extends State<Json> {
  List<NamesModel> name = [
    NamesModel(name: "anurag", age: 22, prof: "Developer"),
    NamesModel(name: "Niraj", age: 22, prof: "Banker"),
    NamesModel(name: "Vijay", age: 22, prof: "CEO"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Modal Class"),
      ),
      body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, indexx) {
            return ListTile(
              leading: const Icon(Icons.list),
              title: Text(name[indexx].name.toString()),
              subtitle: Text(name[indexx].prof.toString()),
              trailing: IconButton(
                onPressed: () {
                  name.removeAt(indexx);
                  setState(() {});
                },
                icon: Icon(Icons.delete),
              ),
            );
          }),
    );
  }
}

// class Names {
//   String name;
//   int age;
//   Names({required this.name, required this.age});
// }
