import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);
  final options = const ['Metal Gear', 'GoW', 'Bayonetta', 'Bioshok Infinite'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Dos'),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, i) => ListTile(
            title: Text(options[i]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              final game = options[i];
              print(game);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
