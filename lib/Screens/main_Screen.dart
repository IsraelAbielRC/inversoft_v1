import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 30);
    int couter = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainScreen Bar'),
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
              '$couter',
              style: fontSize,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add 
        ),
        onPressed: () {
          
      }),
    );
  }
}
