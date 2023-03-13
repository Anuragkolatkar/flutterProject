// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
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
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text(
                      "06-02-2023",
                      style: TextStyle(color: Color.fromARGB(255, 8, 76, 169)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.topLeft,
            child: ReadMoreText(
              'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
              trimLines: 2,
              textAlign: TextAlign.justify,
              colorClickableText: Colors.pink,
              trimMode: TrimMode.Line,
              trimCollapsedText: " See More...",
              // trimExpandedText: " Show Less",
              moreStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 8, 76, 169),
                  wordSpacing: 3,
                  height: 1),
              lessStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 8, 76, 169),
              ),
              style: TextStyle(fontSize: 16, wordSpacing: 3, height: 1.5),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 17),
          child: Container(
            height: 390,
            decoration: BoxDecoration(
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
            child: Card(
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Column(
                children: [
                  Container(
                    height: 319,
                    width: 393,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(14),
                        topLeft: Radius.circular(14),
                      ),
                      child: Image.asset(
                        'assets/l1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.visibility,
                          color: Color.fromARGB(255, 8, 76, 169),
                          size: 35,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 200),
                          child: Text("202"),
                        ),
                        //Text("202"),
                        const Icon(
                          Icons.share,
                          color: Color.fromARGB(255, 8, 76, 169),
                          size: 35,
                        )
                      ],
                    ),
                  )
                  //ListTile(title: Text(profile[index].age.toString())),
                ],
              ),
            ),
          ),
        ),
      ]),
    );

    //);
    // ignore: dead_code
  }
}
