import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Lists/colorlist.dart';

class NotesUI extends StatefulWidget {
  const NotesUI({Key? key}) : super(key: key);

  @override
  State<NotesUI> createState() => _NotesUIState();
}

class _NotesUIState extends State<NotesUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Icon(Icons.home),
    );
  }
}
