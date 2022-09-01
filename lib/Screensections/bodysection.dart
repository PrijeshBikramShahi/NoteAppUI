import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:note_taker/Screensections/staggered_grid.dart';

class MainBody extends StatefulWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 30, 30),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        toolbarHeight: 78,
        backgroundColor: Color.fromARGB(255, 30, 30, 30),
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Notes",
                style: TextStyle(fontSize: 25),
              ),
              Column(
                children: [
                  AnimSearchBar(
                      autoFocus: false,
                      color: Color.fromARGB(255, 49, 49, 49),
                      rtl: true,
                      width: 260,
                      textController: textController,
                      onSuffixTap: () {
                        print("tapped");
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
      body: StaggeredGridBuilder(),
    );
  }
}
