import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
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

  void mostrarAlertaIOS(BuildContext c) {
    showCupertinoDialog(
        barrierDismissible: true,
        context: c,
        builder: (c) {
          return CupertinoAlertDialog(
            title: const Text('Titlo Cupertino'),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('Este es un contenido de Cupertino'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(c),
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
            onPressed: () => Platform.isAndroid
                ? mostrarAlerta(context)
                : mostrarAlertaIOS(context)),
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
