// ignore: file_names
// ignore: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class Notifiacation extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final nameimage;
  String text1;
  String text2;
  var today = DateTime.now();
  String currentDate = DateFormat('d MMM AT h:mm a').format(DateTime.now());
  VoidCallback onTap;
  Notifiacation(
      {required this.nameimage,
      required this.text1,
      required this.text2,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 17, right: 17, top: 10),
            child: SizedBox(
                width: 384,
                height: 95,
                child: Card(
                  color: Color(0xffFFF0F0),
                  child: ListTile(
                    leading: SizedBox(
                      height: 45,
                      width: 45,
                      child: CircleAvatar(
                          radius: 56,
                          backgroundColor: Color.fromARGB(255, 212, 209, 210),
                          child: SvgPicture.asset(
                            "assets/" + nameimage,
                            width: 25,
                            height: 25,
                            color: Colors.white,
                          )),
                    ),
                    title: Text(
                      text1,
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    subtitle: Text(text2),
                    trailing: Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Text(
                        currentDate,
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                    ),
                    onTap: () {},
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
