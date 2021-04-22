import 'package:flutter/material.dart';

Padding buildSearchBar() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 270,
          child: TextField(
            cursorColor: Colors.red,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[800]),
                hintText: "Type in your text",
                fillColor: Color(0xfff0f0f3)),
          ),
        ),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.grey),
          child: IconButton(
              icon: Icon(
                Icons.settings,
                size: 30,
                color: Colors.white60,
              ),
              onPressed: () {}),
        )
      ],
    ),
  );
}
