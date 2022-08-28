import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_taker/Screensections/staggered_grid.dart';
import 'package:note_taker/homepage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      darkTheme: ThemeData.light(),
      home: StaggeredGridBuilder(),
    );
  }
}
