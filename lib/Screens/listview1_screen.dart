import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);
  final options = const ['Metal Gear', 'GoW', 'Bayonetta', 'Bioshok Infinite'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Uno'),
      ),
      body: ListView(
        children: [
          ...options
              .map((e) => ListTile(
                    title: Text(e),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ))
              .toList()
        ],
      ),
    );
  }
}
