import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);
  void mostrarAlerta(BuildContext c) {
    showDialog(
        barrierDismissible: true,
        context: c,
        builder: (c) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('Es un Contenido'),
              FlutterLogo(
                size: 100,
              )
            ]),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(c);
                  },
                  child: const Text('Cerrar'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text(
              'Mostrar Alerta',
              style: TextStyle(fontSize: 16),
            ),
          ),
          onPressed: () => mostrarAlerta(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.close_fullscreen_rounded),
      ),
    );
  }
}
