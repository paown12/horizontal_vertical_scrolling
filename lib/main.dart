// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:horizontal_vertical_scrolling/hor_ver_scrolling.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HorVerScrolling(),
    );
  }
}
//lets create a new file..