import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:classico/main.dart';
import 'home2.dart';
import 'homee_page.dart';
import 'login2.dart';
import 'main.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  static const String KEYLOGIN = "login";
  final _email = TextEditingController();
  final _pass = TextEditingController();
  String? email;
  String? pass;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WhereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Stack(
            children: <Widget>[
              Image.asset(
                'assets/undraw_Login_re_4vu2.png',
                width: 600,
                height: 450,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: const Color.fromARGB(255, 247, 247, 247),
                      child: IconButton(
                        iconSize: 30,
                        color: const Color.fromARGB(255, 13, 13, 13),
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back),
                      ),
                    ), //),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Ocula',
                      style: TextStyle(
                          color: Color.fromARGB(255, 101, 151, 164),
                          fontSize: 50,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.42, left: 35),
                child: const Text(
                  "SignUp",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 35,
                    left: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      'E-mail',
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 52, 53, 53)),
                    ),
                    TextField(
                      controller: _email,
                      decoration: InputDecoration(
                        suffixIcon: const Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: Icon(Icons.people),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 52, 53, 53)),
                    ),
                    TextField(
                      controller: _pass,
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: const Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: Icon(Icons.lock),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: 250,
                      height: 55,
                      child: ElevatedButton(
                        // ignore: sort_child_properties_last
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () async {
                          var share = await SharedPreferences.getInstance();
                          share.setBool(KEYLOGIN, true);

                          // passs(context);

                          // setState(() {
                          //   email = _email.text;
                          //   pass = _pass.text;
                          // });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 101, 151, 164)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Forget password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 153, 146, 146)
                              .withOpacity(0.8)),
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }

  void WhereToGo() async {
    var share = await SharedPreferences.getInstance();
    var login = share.getBool(KEYLOGIN);

    Timer(
      const Duration(seconds: 2),
      () {
        if (login != null) {
          if (login) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => MyWidget()));
          } else {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const Login2()));
          }
        } else {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const Login2()));
        }
      },
    );
  }

  // void passs(BuildContext context) {
  //   String sendText = _email.text + " " + _pass.text;
  //   Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //           builder: (context) => MyWidget(
  //                 name: sendText,
  //                 key: null,
  //               )));
  // }
}
