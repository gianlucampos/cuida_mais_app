
import 'package:flutter/material.dart';

AppBar appBar(String title) {
  return AppBar(
    backgroundColor: Colors.blue,
    toolbarHeight: 100,
    elevation: 20,
    iconTheme: const IconThemeData(
      color: Colors.white
    ),
    title: Text(title, style: const TextStyle(color: Colors.white)),
  );
}