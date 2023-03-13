import 'package:classico/digiyugNoti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:async';

// ignore: must_be_immutable
class Cardd extends StatefulWidget {
  const Cardd({
    super.key,
  });

  @override
  State<Cardd> createState() => _CarddState();
}

class _CarddState extends State<Cardd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: const Padding(
              padding: EdgeInsets.only(top: 60, left: 23),
              child: Text(
                "Notifications",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Flexible(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, _) {
                  return Container(
                    height: 105,
                    child: Flexible(
                      child: Notifiacation(
                          nameimage: "language-translation.svg",
                          text1: "Notification Title",
                          text2: 'Notification Description',
                          onTap: () {}),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
