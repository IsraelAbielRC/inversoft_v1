import 'dart:developer';

import 'package:flutter/material.dart';

import 'custom_action_Screen.dart';

class CouterScreen extends StatefulWidget {
  const CouterScreen({Key? key}) : super(key: key);

  @override
  State<CouterScreen> createState() => _CouterScreenState();
}

class _CouterScreenState extends State<CouterScreen> {
  int counter = 0;
  void Incrementar() {
    counter++;
    setState(() {});
  }

  void Resetear() {
    counter = 0;
    setState(() {});
  }

  void Disminuir() {
    counter--;
    setState(() {});
  }

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
        floatingActionButton: CustomActionButton(
          aumentar: Incrementar,
          resetear: Resetear,
          disminuir: Disminuir,
        ));
  }
}
