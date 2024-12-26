import 'package:cuisines_world/playground/test.dart';
import 'package:cuisines_world/playground/test_2.dart';
import 'package:flutter/material.dart';
import 'package:cuisines_world/Item_1.dart';
import 'package:cuisines_world/NewItem_12.dart';
import 'package:cuisines_world/New_item.dart';
import 'package:cuisines_world/South_indian.dart';
import 'package:cuisines_world/Splash.dart';
import 'package:cuisines_world/Western.dart';
import 'package:cuisines_world/Home_Page.dart';

import 'Cusine.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home:splash(),
    );
  }
}


