import 'package:classico/models/notes_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class Hive_page extends StatefulWidget {
  const Hive_page({super.key});

  @override
  State<Hive_page> createState() => _Hive_pageState();
}

class _Hive_pageState extends State<Hive_page> {
  final titleController = TextEditingController();
  final descController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hive Database'),
        centerTitle: true,
      ),
      body: ValueListenableBuilder<Box<NotesModel>>(
          valueListenable: Boxes.getData().listenable(),
          builder: (context, box, _) {
            var data = box.values.toList().cast<NotesModel>();
            return ListView.builder(
                shrinkWrap: true,
                itemCount: box.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(data[index].title.toString()),
                              Spacer(),
                              InkWell(
                                  onTap: () {
                                    delete(data[index]);
                                  },
                                  child: Icon(Icons.delete)),
                              SizedBox(
                                width: 11,
                              ),
                              InkWell(
                                onTap: () {
                                  _editDialog(
                                      data[index],
                                      data[index].title.toString(),
                                      data[index].desc.toString());
                                },
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                          Text(data[index].desc.toString()),
                        ],
                      ),
                    ),
                  );
                });
          }),
      // body: Column(
      //   children: [
      //     FutureBuilder(
      //         future: Hive.openBox('anu'),
      //         builder: (context, snapshot) {
      //           return Column(
      //             children: [
      //               // ListTile(
      //               //   //title: Text("jjjj"),
      //               //   title: Text(snapshot.data!.get('name').toString()),
      //               //   // subtitle: Text(snapshot.data!.get('age').toString()),
      //               // ),
      //             ],
      //           );
      //         }),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _showMyDialog();
          //   var box = await Hive.openBox('anu');

          //   box.put('name', 'Anurag');
          //   box.put('age', 23);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void delete(NotesModel notesModel) async {
    await notesModel.delete();
  }

  Future<void> _showMyDialog() async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(12)),
                child: Text("Add Notes")),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    controller: titleController,
                    decoration: InputDecoration(
                        hintText: 'Enter Title',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: descController,
                    decoration: InputDecoration(
                        hintText: 'Enter Description',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  )
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancle")),
              TextButton(
                  onPressed: () {
                    final data = NotesModel(
                        title: titleController.text, desc: descController.text);
                    final box = Boxes.getData();
                    box.add(data);
                    //data.save();
                    titleController.clear();
                    descController.clear();
                    Navigator.pop(context);
                  },
                  child: Text("Add")),
            ],
          );
        });
  }

  Future<void> _editDialog(
      NotesModel notesModel, String title, String desc) async {
    titleController.text = title;
    descController.text = desc;
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Edit Notes"),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    controller: titleController,
                    decoration: InputDecoration(
                        hintText: 'Enter Title',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: descController,
                    decoration: InputDecoration(
                        hintText: 'Enter Description',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  )
                ],
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancle")),
              TextButton(
                  onPressed: () async {
                    notesModel.title = titleController.text.toString();
                    notesModel.desc = descController.text.toString();

                    notesModel.save();
                    titleController.clear();
                    descController.clear();

                    Navigator.pop(context);
                  },
                  child: Text("Edit")),
            ],
          );
        });
  }
}

class Boxes {
  static Box<NotesModel> getData() => Hive.box<NotesModel>("notes");
}
