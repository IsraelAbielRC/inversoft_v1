import 'dart:developer';

import 'package:flutter/material.dart';

class CouterScreen extends StatefulWidget {
  const CouterScreen({Key? key}) : super(key: key);

  @override
  State<CouterScreen> createState() => _CouterScreenState();
}

class _CouterScreenState extends State<CouterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Couter Screens'),
        elevation: 8,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Núm. de Clicks',
              style: fontSize,
            ),
            Text(
              '$counter',
              style: fontSize,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              child: const Icon(Icons.exposure_minus_1_outlined),
              onPressed: () {
                setState(() {
                  counter--;
                });
              }),
          FloatingActionButton(
              child: const Icon(Icons.equalizer_outlined),
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              }),
          FloatingActionButton(
              child: const Icon(Icons.exposure_plus_1_outlined),
              onPressed: () {
                setState(() {
                  counter++;
                });
              }),
        ],
      ),
    );
  }
}
