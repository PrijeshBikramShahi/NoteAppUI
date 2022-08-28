import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridBuilder extends StatefulWidget {
  const StaggeredGridBuilder({Key? key}) : super(key: key);

  @override
  State<StaggeredGridBuilder> createState() => _StaggeredGridBuilderState();
}

List colorList = [
  Colors.red,
  Colors.green,
  Colors.lightBlue,
  Colors.orange,
  Colors.blue,
  Colors.pink
];

class _StaggeredGridBuilderState extends State<StaggeredGridBuilder> {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 4, right: 4, top: 10),
        child: GridView.builder(
            itemCount: 50,
            // padding: EdgeInsets.all(5),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: ((context, index) {
              return Container(
                // padding: EdgeInsets.all(3),
                color: colorList[index],
                child: Icon(Icons.home),
              );
            })),
      );
}
