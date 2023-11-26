import 'package:flutter/material.dart';

class TextboxNormal extends StatelessWidget {
  const TextboxNormal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Padding(
        padding:
        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              filled: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15.0),
              hintStyle: TextStyle(color: Colors.grey),
              labelText: "User Name",
              fillColor: Colors.white),
        ));
  }
}
