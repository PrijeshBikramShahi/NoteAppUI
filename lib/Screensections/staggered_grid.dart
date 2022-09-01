import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:hover_effect/hover_effect.dart';
import 'package:note_taker/Navigations/Screens/viewing_screen.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
// import 'package:hover_effect/hover_effect.dart';
import '../Lists/colorlist.dart';
// import '../dbstuff/dbservice.dart';
import 'package:path/path.dart';

class StaggeredGridBuilder extends StatefulWidget {
  const StaggeredGridBuilder({Key? key}) : super(key: key);

  @override
  State<StaggeredGridBuilder> createState() => _StaggeredGridBuilderState();
}

class _StaggeredGridBuilderState extends State<StaggeredGridBuilder> {
  int _version = 1;

  List notes = [];

  late Database dbase;
  @override
  void initState() {
    // colorList.shuffle(); // TODO: implement initState
    initDatabase();
    super.initState();
  }

  initDatabase() async {
    final dir = await getApplicationDocumentsDirectory();

    final dbPath = join(dir.path + '/app_ko_db.db');

    print(dbPath);
    final db = await openDatabase(
      dbPath,
      version: _version,
      onConfigure: (db) {
        try {
          db.execute('''

          CREATE TABLE IF NOT EXISTS notes(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title VARCHAR,
            body TEXT,
            dateCreated VARCHAR,
            dateUpdated VARCHAR
          );

        ''');
        } catch (e) {
          print(e);
        }
      },
      onOpen: (db) {},
    );
    dbase = db;
  }

  addNote() async {
    print("clciked");
    try {
      await dbase.insert("notes", {
        "title": "THE TITLE",
        "body": "This is the body",
        "dateCreated": DateTime.now().toLocal().toString(),
      });
    } catch (e) {
      print(e);
    }
  }

  getNote() async {
    print("clicekd2");
    try {
      final result = await dbase.query("notes");

      notes = result;
      print(notes.length);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AnimatedContainer(
                    color: Colors.green,
                    duration: Duration(milliseconds: 20),
                    child: MaterialButton(
                      onPressed: (() => addNote()),
                      child: Text("addnote"),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AnimatedContainer(
                    color: Colors.red,
                    duration: Duration(milliseconds: 20),
                    child: MaterialButton(
                      onPressed: (() => getNote()),
                      child: Text("fetch note"),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
  // StaggeredGridViewScreen();
}

Widget StaggeredGridViewScreen() {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 1),
    child: GridView.custom(
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverQuiltedGridDelegate(
            repeatPattern: QuiltedGridRepeatPattern.inverted,
            crossAxisSpacing: 10,
            mainAxisSpacing: 12,
            crossAxisCount: 4,
            pattern: [
              QuiltedGridTile(2, 2),
              QuiltedGridTile(2, 2),
              QuiltedGridTile(2, 4),
              QuiltedGridTile(4, 2),
              QuiltedGridTile(2, 2),
              QuiltedGridTile(2, 2),
              QuiltedGridTile(3, 4),
            ]),
        childrenDelegate: SliverChildBuilderDelegate(
            childCount: colorList.length, (context, index) {
          return InkWell(
            onTap: () {
              print("tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ViewScreen(),
                  ));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: EdgeInsets.all(15),
                color: colorList[index],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // color: Colors.black,
                      width: 220,
                      child: Text(
                        "dataaaaaaaaaaaaaaaaaaaaaddddddddaaaaaaaaaaaaaaaaaaaaaaaa",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "2079-05-10",
                      style: TextStyle(color: Colors.grey[800]),
                    ),
                  ],
                ),
              ),
            ),
          );
        })),
  );
}
