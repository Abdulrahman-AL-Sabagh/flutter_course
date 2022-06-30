import 'package:flutter/material.dart';

void main() {
  const image = "https://www.w3schools.com/w3css/img_lights.jpg";
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey[700],
      appBar: AppBar(
        title: const Center(
            child: Text(
          "I Am Rich",
        )),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: const Center(
        child: Image(
          image: NetworkImage(image),
        ),
      ),
    ),
  ));
}
