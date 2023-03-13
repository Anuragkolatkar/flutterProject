// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore: prefer_const_constructors
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore_for_file: prefer_const_constructors
class Digiyug extends StatefulWidget {
  const Digiyug({super.key});

  @override
  State<Digiyug> createState() => _DigiyugState();
}

class _DigiyugState extends State<Digiyug> {
  late final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xffC9C4C4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Get.height * 0.3 - 50,
              child: Padding(
                padding: const EdgeInsets.only(top: 80, left: 16, right: 14),
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        gradient: LinearGradient(
                            colors: [Color(0xffED213A), Color(0xff93291E)])),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage("assets/logo.png"),
                            width: 60,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25, left: 17),
                            child: Row(
                              children: [
                                Column(children: [
                                  Text(
                                    "Kundan Singh Panwar",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 75),
                                    child: Text("8997879870",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white)),
                                  ),
                                ]),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 60, top: 20),
                                  child: Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //Free Plan---------------------------------------------------------------------------
            Container(
              child: Column(
                children: [
                  Container(
                      child: Padding(
                    padding: const EdgeInsets.only(
                        top: 13, right: 300, bottom: 3, left: 5),
                    child: Text(
                      "Subscription",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  )),

                  Container(
                    width: 384,
                    height: 67,
                    child: Card(
                      color: Color(0xffFFF0F0),
                      shadowColor: Color(0xffFFF0F0),
                      child: Container(
                        child: ListTile(
                          // ignore: prefer_const_constructors
                          title: Padding(
                            padding: const EdgeInsets.only(left: 40),
                            // ignore: prefer_const_constructors
                            child: GradientText(
                              'Free Plan',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                              gradient: LinearGradient(colors: [
                                Color(0xffED213A),
                                Color(0xff93291E)
                              ]),
                            ),
                          ),
                          trailing: Icon(
                            Icons.keyboard_arrow_right,
                            color: Color(0xffA21B31),
                            size: 30,
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                  ),

                  //Services-------------------------------------------------------------------------
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            child: Padding(
                          padding: const EdgeInsets.only(
                              top: 9, right: 325, bottom: 3, left: 5),
                          child: Text(
                            "Services",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        )),
                        Container(
                          width: 384,
                          height: 66,
                          child: Card(
                            color: Color(0xffFFF0F0),
                            shadowColor: Color(0xffFFF0F0),
                            child: Container(
                              child: ListTile(
                                leading: Container(
                                  height: 45,
                                  width: 45,
                                  child: CircleAvatar(
                                      radius: 56,
                                      backgroundColor: Color(0xffA21B31),
                                      child: SvgPicture.asset(
                                        "assets/live-support.svg",
                                        width: 25,
                                        height: 25,
                                        color: Colors.white,
                                      )),
                                ),
                                title: Text(
                                  'On Spot Post',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffA21B31)),
                                ),
                                trailing: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Color(0xffA21B31),
                                  size: 30,
                                ),
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  //2 nd service-------------------------------------------------------------------------------
                  Container(
                      width: 384,
                      height: 66,
                      child: Card(
                        color: Color(0xffFFF0F0),
                        shadowColor: Color(0xffFFF0F0),
                        child: Container(
                          //padding: EdgeInsets.only(left: 1),
                          child: ListTile(
                            leading: Container(
                              height: 45,
                              width: 45,
                              child: CircleAvatar(
                                  radius: 56,
                                  backgroundColor: Color(0xffA21B31),
                                  child: SvgPicture.asset(
                                    "assets/language-translation.svg",
                                    width: 25,
                                    height: 25,
                                    color: Colors.white,
                                  )),
                            ),
                            title: Text(
                              'Change language of post',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffA21B31)),
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              color: Color(0xffA21B31),
                              size: 30,
                            ),
                            onTap: () {},
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  //3 nd service-------------------------------------------------------------------------------
                  Container(
                      width: 384,
                      height: 66,
                      child: Card(
                        color: Color(0xffFFF0F0),
                        shadowColor: Color(0xffFFF0F0),
                        child: Container(
                          //padding: EdgeInsets.only(left: 1),
                          child: ListTile(
                            leading: Container(
                              height: 45,
                              width: 45,
                              child: CircleAvatar(
                                  radius: 56,
                                  backgroundColor: Color(0xffA21B31),
                                  child: SvgPicture.asset(
                                    "assets/share.svg",
                                    width: 25,
                                    height: 25,
                                    color: Colors.white,
                                  )),
                            ),
                            title: Text(
                              'Refer a friend',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffA21B31)),
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              color: Color(0xffA21B31),
                              size: 30,
                            ),
                            onTap: () {},
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  //4 nd service-------------------------------------------------------------------------------
                  Container(
                      width: 384,
                      height: 66,
                      child: Card(
                        color: Color(0xffFFF0F0),
                        shadowColor: Color(0xffFFF0F0),
                        child: Container(
                          //padding: EdgeInsets.only(left: 1),
                          child: ListTile(
                            leading: Container(
                              height: 45,
                              width: 45,
                              child: CircleAvatar(
                                  radius: 56,
                                  backgroundColor: Color(0xffA21B31),
                                  child: SvgPicture.asset(
                                    "assets/category.svg",
                                    width: 25,
                                    height: 25,
                                    color: Colors.white,
                                  )),
                            ),
                            title: Text(
                              'Change category type',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffA21B31)),
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              color: Color(0xffA21B31),
                              size: 30,
                            ),
                            onTap: () {},
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  //5 nd service-------------------------------------------------------------------------------
                  Container(
                      width: 384,
                      height: 66,
                      child: Card(
                        color: Color(0xffFFF0F0),
                        shadowColor: Color(0xffFFF0F0),
                        child: Container(
                          //padding: EdgeInsets.only(left: 1),
                          child: ListTile(
                            leading: Container(
                              height: 45,
                              width: 45,
                              child: CircleAvatar(
                                  radius: 56,
                                  backgroundColor: Color(0xffA21B31),
                                  child: SvgPicture.asset(
                                    "assets/chat-bubbles.svg",
                                    width: 25,
                                    height: 25,
                                    color: Colors.white,
                                  )),
                            ),
                            title: Text(
                              'Faqs',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffA21B31)),
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              color: Color(0xffA21B31),
                              size: 30,
                            ),
                            onTap: () {},
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  //6 nd service-------------------------------------------------------------------------------
                  Container(
                      width: 384,
                      height: 66,
                      child: Card(
                        color: Color(0xffFFF0F0),
                        shadowColor: Color(0xffFFF0F0),
                        child: Container(
                          //padding: EdgeInsets.only(left: 1),
                          child: ListTile(
                            leading: Container(
                              height: 45,
                              width: 45,
                              child: CircleAvatar(
                                  radius: 56,
                                  backgroundColor: Color(0xffA21B31),
                                  child: SvgPicture.asset(
                                    "assets/feedback.svg",
                                    width: 25,
                                    height: 25,
                                    color: Colors.white,
                                  )),
                            ),
                            title: Text(
                              'Feedback',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffA21B31)),
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              color: Color(0xffA21B31),
                              size: 30,
                            ),
                            onTap: () {},
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  //7 nd service-------------------------------------------------------------------------------
                  Container(
                      width: 384,
                      height: 66,
                      child: Card(
                        color: Color(0xffFFF0F0),
                        shadowColor: Color(0xffFFF0F0),
                        child: Container(
                          //padding: EdgeInsets.only(left: 1),
                          child: ListTile(
                            leading: Container(
                              height: 45,
                              width: 45,
                              child: CircleAvatar(
                                  radius: 56,
                                  backgroundColor: Color(0xffA21B31),
                                  child: SvgPicture.asset(
                                    "assets/file.svg",
                                    width: 25,
                                    height: 25,
                                  )),
                            ),
                            title: Text(
                              'Privacy Policy',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffA21B31)),
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              color: Color(0xffA21B31),
                              size: 30,
                            ),
                            onTap: () {},
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 375,
                          height: 57,
                          child: ElevatedButton(
                            child: Text(
                              'Log out',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xffA21B31),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Version 1.0.1",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff858585)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
