import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarSection extends StatefulWidget {
  const AppBarSection({Key? key}) : super(key: key);

  @override
  State<AppBarSection> createState() => _AppBarSectionState();
}

class _AppBarSectionState extends State<AppBarSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Notes"),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: EdgeInsets.all(7),
            color: Color.fromARGB(255, 93, 92, 92),
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
