import 'package:flutter/material.dart';
import 'package:inversoft_v1/Screens/rutas.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes del Home'),
          elevation: 0,
        ),
        body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
            leading: const Icon(Icons.access_time_filled_outlined),
            title: const Text('Nombre de Ruta'),
            onTap: () {
              Navigator.pushNamed(context, 'LOL');
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: 100,
        ));
  }
}
