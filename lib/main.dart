import 'package:flutter/material.dart';
import 'package:inversoft_v1/Screens/listview1_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: ListView1Screen()
    );
  }
}