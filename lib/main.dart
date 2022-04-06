import 'package:flutter/material.dart';
import 'package:project_4_7/pages/customfield_page.dart';
import 'package:project_4_7/pages/gesture_detector.dart';
import 'package:project_4_7/pages/home_page.dart';
import 'package:project_4_7/pages/second_page.dart';
import 'package:project_4_7/pages/textfield_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: CustomFieldPage(),
      routes: {
        CustomFieldPage.id:(context)=>CustomFieldPage(),
        TextFieldPage.id:(context)=>TextFieldPage(),
        GestDet.id:(context)=>GestDet(),
        SecondPage.id:(context)=>SecondPage(),
        HomePage.id:(context)=>HomePage(),
      },
    );
  }
}

