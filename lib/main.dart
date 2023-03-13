import 'dart:async';

import 'package:classico/Map.dart';
import 'package:classico/application_list.dart';
import 'package:classico/button.dart';
import 'package:classico/card_view.dart';
import 'package:classico/digiyug.dart';
import 'package:classico/digiyugNoti.dart';

import 'package:classico/hive_page.dart';
import 'package:classico/homee_page.dart';
import 'package:classico/login2.dart';
import 'package:classico/login3.dart';
import 'package:classico/meghwal.dart';
import 'package:classico/models/notes_model.dart';
import 'package:classico/onbording_scrren1.dart';
import 'package:classico/provider.dart';
import 'package:classico/shared_preference.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'card.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);

  Hive.registerAdapter(NotesModelAdapter());
  await Hive.openBox<NotesModel>('notes');

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const String KEYLOGIN = "login";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.cyan,
      ),

      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      routes: {
        //"/": (context) => Login(),
        // "/": (context) => Login2(),
        //"/": (context) => Digiyug(),
        // "/": (context) => Notifiacation(
        //       nameimage: "language-translation.svg",
        //       onTap: () {},
        //       text1: 'dfdfdf',
        //       text2: 'Anurag',
        //     ),
        "/": (context) => Cardd(),
        //"/": (context) => Button(),
        //"/": (context) => OnbordingScreen(),
        //"/": (context) => Meghwal(),
        // "/": (context) => Practice(),
        //"/": (context) => Json(),
        //"/": (context) => MapPage(),
        //  "/": (context) => CardView(),
        //"/": (context) => Provider(),
        // "/": (context) => FuturePage(),
        // "/": (context) => Shared_prefrence(),
        // "/": (context) => Hive_page(),
      },
    );
  }
}
