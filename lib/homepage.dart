import 'package:flutter/material.dart';

import 'package:note_taker/Lists/colorlist.dart';
import 'package:note_taker/Navigations/Screens/add_screen.dart';
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
      body: MainBody(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 0),
        child: FloatingActionButton(
          hoverColor: Colors.lightBlue,
          elevation: 5,
          splashColor: Colors.red,
          backgroundColor: Color.fromARGB(255, 30, 30, 30),
          onPressed: () {
            print("edit tap");
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddScreen(),
                ));
          },
          child: Icon(
            Icons.edit,
            color: Color.fromARGB(255, 255, 255, 255),
            size: 20,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
