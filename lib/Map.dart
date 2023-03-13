import 'package:classico/student_modal.dart';
import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapState();
}

class _MapState extends State<MapPage> {
  List<Student> profile = [
    Student(name: "anuag", age: 12),
    Student(name: "anuag", age: 12),
    Student(name: "anuag", age: 12),
    Student(name: "anuag", age: 12),
  ];
  List<bool> numberTruthList = [true, true, true, true, true, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Map Data"),
      ),
      body: ListView.builder(
          itemCount: profile.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Column(
                children: [
                  ListTile(
                    trailing: IconButton(
                      onPressed: () {
                        profile.removeAt(index);
                        setState(() {});
                      },
                      icon: const Icon(Icons.delete),
                      iconSize: 30,
                      color: Colors.red,
                    ),
                    leading: const Icon(
                      Icons.list,
                      size: 30,
                    ),
                    iconColor: Colors.blue,
                    title: Text(profile[index].name),
                    subtitle: Text(profile[index].age.toString()),
                  ),

                  //ListTile(title: Text(profile[index].age.toString())),
                ],
              ),
            );
            // ignore: dead_code
          }),
    );
  }
}

class Student {
  String name;
  int age;
  Student({required this.name, required this.age});
}
