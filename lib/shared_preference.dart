import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shared_prefrence extends StatefulWidget {
  const Shared_prefrence({super.key});

  @override
  State<Shared_prefrence> createState() => _Shared_prefrenceState();
}

class _Shared_prefrenceState extends State<Shared_prefrence> {
  var nameController = TextEditingController();
  var nameValue = "No value Saved";
  var age = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getvalue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Prefrence"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: SizedBox(
            height: 280,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      label: Text("Name"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21))),
                ),
                Text(age.toString()),
                SizedBox(
                  height: 11,
                ),
                ElevatedButton(
                    onPressed: () async {
                      // var name = nameController.text.toString();
                      var pref = await SharedPreferences.getInstance();
                      pref.setInt('age', 22);

                      pref.setString("name", nameController.text.toString());
                    },
                    child: Text("Saved Value")),
                SizedBox(
                  height: 11,
                ),
                Text(nameValue)
              ],
            ),
          ),
        ),
      ),
    );
  }

  void getvalue() async {
    var pref = await SharedPreferences.getInstance();
    var nameValue = pref.getString("name") ?? '';
    var age = pref.getInt('age') ?? 0;
    setState(() {});
  }
}
