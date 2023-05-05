// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:beleza/screens/bottom_bar.dart';
import 'package:beleza/screens/home_page.dart';
import 'package:beleza/utils/styles.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //debugShowCheckedModeBanner: false.

    return MaterialApp(
      debugShowCheckedModeBanner: false, //debug removal
      title: 'Beleza App',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: primary,
      ),
      home: BottomBar(),
    );
  }
}
