import 'package:flutter/material.dart';

Widget inputText({required String label}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
      const Divider(color: Colors.transparent, height: 10),
      SizedBox(
        height: 50,
        child: TextFormField(
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            labelStyle: const TextStyle(color: Colors.black),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(width: 3, color: Colors.black),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(width: 3, color: Colors.black),
            ),
            fillColor: Colors.white,
          ),
        ),
      ),
      const Divider(color: Colors.transparent, height: 15),
    ],
  );
}