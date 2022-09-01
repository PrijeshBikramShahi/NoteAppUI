import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:note_taker/Navigations/Screens/viewing_screen.dart';
import 'package:note_taker/Screensections/staggered_grid.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 30, 30),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 30, 30, 30),
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: Color.fromARGB(255, 55, 55, 55),
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                        color: Color.fromARGB(255, 55, 55, 55),
                        child: Text(
                          "Save",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            preferredSize: Size(10, 10)),
      ),
    );
  }
}
