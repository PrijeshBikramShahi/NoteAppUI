import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:note_taker/Lists/colorlist.dart';
import 'package:note_taker/Navigations/Screens/edit_screen.dart';

class ViewScreen extends StatefulWidget {
  const ViewScreen({Key? key}) : super(key: key);

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 30, 30),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    InkWell(
                      onTap: () {
                        print("backbuttontappedviewingwindow");
                        Navigator.pop(context);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          color: Color.fromARGB(255, 55, 55, 55),
                          child: Icon(Icons.arrow_back_ios_new_rounded),
                        ),
                      ),
                    )
                  ]),
                  Column(children: [
                    InkWell(
                      onTap: () {
                        print("edit button tapped viewing window");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditScreen(),
                            ));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          color: Color.fromARGB(255, 55, 55, 55),
                          child: Icon(Icons.edit_note),
                        ),
                      ),
                    )
                  ]),
                ],
              ),
            ),
            preferredSize: Size(10, 10)),
        backgroundColor: Color.fromARGB(255, 30, 30, 30),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 15),
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              child: Text(
                "New Flutter Weather API is outstanding",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    wordSpacing: 2),
              ),
            ),
            SizedBox(height: 25),
            Container(
              child: Text(
                "2079-05-11",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            SizedBox(height: 25),
            Container(
              child: Text(
                textData,
                style: TextStyle(fontSize: 19),
              ),
            )
          ],
        ),
      ),
    );
  }
}
