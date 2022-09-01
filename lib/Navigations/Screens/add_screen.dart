import 'package:flutter/material.dart';

import 'package:form_field_validator/form_field_validator.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final requiredValidator =
      RequiredValidator(errorText: "This field cannot be empty");
  final descValidator = MultiValidator([
    RequiredValidator(errorText: "title cannot be empty"),
    MaxLengthValidator(5, errorText: "errorText")
  ]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(top: 65, left: 20, right: 20),
              width: 400,
              // height: 50,
              color: Color.fromARGB(255, 30, 30, 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              print("tapped bacl");
                              Navigator.pop(context);
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Container(
                                padding: EdgeInsets.all(9),
                                color: Color.fromARGB(255, 55, 55, 55),
                                child: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              print("save tapped");
                              Navigator.pop(context);
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(7),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                color: Color.fromARGB(255, 55, 55, 55),
                                child: Text(
                                  "Save",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Color.fromARGB(255, 30, 30, 30),
              child: Column(
                children: [
                  TextFormField(
                    maxLines: 4,
                    validator: requiredValidator,
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      hintText: "Enter a title",
                      labelText: "Title",
                      labelStyle: TextStyle(fontSize: 30),
                    ),
                  ),
                  SizedBox(height: 5),
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      hintText: "Enter a description",
                      labelText: "Type something...",
                      labelStyle: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
