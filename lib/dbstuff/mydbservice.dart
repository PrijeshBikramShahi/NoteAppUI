import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../Lists/colorlist.dart';

class DbService {
  static int _version = 1;
  static List notes = [];
  static late Database db;

  static Future<void> initDatabase() async {
    final dir = await getApplicationDocumentsDirectory();

    final dbPath = join(dir.path + '/app_ko_db.db');

    print(dbPath);
    final Database _db = await openDatabase(
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
    db = _db;
    return;
  }

  static addNote({required String body, required String title}) async {
    try {
      await db.insert(
        "notes",
        {
          "title": title,
          "body": body,
          "dateCreated": DateTime.now().toLocal().toString(),
        },
      );
    } catch (e) {
      print(e);
    }
  }

  static Future<List> getNote() async {
    try {
      final result = await db.query("notes");
      return result;
    } catch (e) {
      print(e);
      return [];
    }
  }

  static deleteNote(int id) async {
    return await db.delete("notes", where: "id=?", whereArgs: [id]);
  }
}
