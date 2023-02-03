import 'package:ceo_list/Ceo_List.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => CEO(),
      },
    ),
  );
}