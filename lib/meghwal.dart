import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

// ignore_for_file: prefer_const_constructors,
class Meghwal extends StatelessWidget {
  String content =
      "Lorem Ipsum is simply dummy text of thhh printing and more to say that UI open source framework to build high-quality native";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 88,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text("Hi Welcome Kundun",
                style: TextStyle(
                    color: Color.fromARGB(255, 8, 76, 169),
                    fontSize: 16,
                    fontWeight: FontWeight.w600)),
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 17),
                  child: Image.asset(
                    "assets/logo.png",
                    height: 54,
                    width: 54,
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 13, top: 11),
                  child: Column(
                    children: [
                      Text(
                        "By Admin",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      Text(
                        "06-02-2023",
                        style:
                            TextStyle(color: Color.fromARGB(255, 8, 76, 169)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(17),
              alignment: Alignment.topLeft,
              child: ReadMoreText(
                content,
                trimLines: 2,
                textAlign: TextAlign.justify,
                //colorClickableText: Colors.pink,
                trimMode: TrimMode.Line,
                trimCollapsedText: "See More...",
                trimExpandedText: " Show Less",
                moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 8, 76, 169),
                    wordSpacing: 5,
                    height: 1.5),
                lessStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 8, 76, 169),
                ),
                style: TextStyle(fontSize: 16, wordSpacing: 3, height: 1.5),
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17, right: 17, top: 7),
                  child: Container(
                    width: 393,
                    height: 380,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 244, 246, 247),
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: const Offset(
                            4.0,
                            4.0,
                          ),
                          blurRadius: 8.0,
                          spreadRadius: 0.0,
                        ),
                        //BoxShadow(blurRadius: 5),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: Column(
                        children: [
                          Container(
                            height: 319,
                            width: 393,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(14),
                                topLeft: Radius.circular(14),
                              ),
                              child: Image.asset(
                                'assets/l1.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25, right: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.visibility,
                                  color: Color.fromARGB(255, 8, 76, 169),
                                  size: 35,
                                ),
                                //Text("202"),
                                Icon(
                                  Icons.share,
                                  color: Color.fromARGB(255, 8, 76, 169),
                                  size: 35,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
