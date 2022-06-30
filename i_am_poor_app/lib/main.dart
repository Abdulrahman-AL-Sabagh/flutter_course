import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: const Center(
          child: Text(
            "I Am Poor",
          ),
        ),
      ),
      body: const Center(
        child: Text(
          "I do not even have money to put an image in this app",
        ),
      ),
    ),
  ));
}
