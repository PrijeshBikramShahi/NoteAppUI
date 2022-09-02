import 'package:flutter/material.dart';

final titleController = TextEditingController();
final bodyController = TextEditingController();
List colorList = [
  Color(0xFFE7ED9B),
  Color(0xFFFEAB90),
  Color.fromARGB(255, 254, 204, 129),
  Color.fromARGB(255, 128, 223, 234),
  Color.fromARGB(255, 207, 149, 218),
  Color.fromARGB(255, 244, 143, 177),
  Color.fromARGB(255, 127, 202, 194),
  Color.fromARGB(255, 104, 74, 179),
  Color.fromARGB(255, 163, 72, 166),
  Color.fromARGB(255, 159, 99, 196),
  Color.fromARGB(255, 143, 117, 216),
  Color.fromARGB(255, 206, 162, 215),
  Color.fromARGB(255, 230, 142, 54),
  Color.fromARGB(255, 221, 81, 128),
  Color.fromARGB(255, 121, 152, 238),
  Color.fromARGB(255, 221, 81, 128),
  Color.fromARGB(255, 249, 118, 153),
  Color.fromARGB(255, 57, 103, 203),
];
List itemData = [
  {
    'title': 'HELLO THERE',
    'date': '2079-05-10',
  }
];
String textData =
    " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem IpsumIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like),Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of  (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "
    ", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from  by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham";
