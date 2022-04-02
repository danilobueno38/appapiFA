
import 'package:consumindo_api_com_flutter/inicial.dart';
import 'package:flutter/material.dart';
import 'package:search_cep/search_cep.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(brightness: Brightness.light, primarySwatch: Colors.amber),
    darkTheme: ThemeData(
      brightness: Brightness.dark,
    ),
  ));
}