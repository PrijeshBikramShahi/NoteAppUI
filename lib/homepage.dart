import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:note_taker/Screensections/appbar.dart';
import 'package:note_taker/Screensections/bodysection.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   bottom: PreferredSize(
      //     child: Container(
      //         padding: EdgeInsets.only(bottom: 15, left: 10, right: 10),
      //         child: AppBarSection()),
      //     preferredSize: Size.fromHeight(10.0),
      //   ),
      //   // flexibleSpace: AppBarSection(),
      // ),
      body: MainBody(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 0),
        child: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 93, 93, 93),
          onPressed: () {
            print("edit tap");
          },
          child: Icon(
            Icons.edit,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
