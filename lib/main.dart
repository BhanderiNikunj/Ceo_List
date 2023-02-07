import 'package:ceo_list/Ceo_List.dart';
import 'package:ceo_list/PrintPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => CEO(),
        'print': (context) => Print(),
      },
    ),
  );
}
