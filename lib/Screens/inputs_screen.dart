import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inputs Forms')),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                TextFormField(
                  autofocus: false,
                  initialValue: '',
                  textCapitalization: TextCapitalization.words,
                  onChanged: (texto) {},
                  validator: (texto) {
                    if (texto == null) return 'Campo requerido';
                    return texto.length < 3 ? 'Minimo 3 letras' : null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                      hintText: 'Nombre del Usuario',
                      labelText: 'Nombre',
                      helperText: 'Solo Letras',
                      //prefixIcon: Icon(Icons.verified_outlined),
                      suffixIcon: Icon(Icons.group_outlined),
                      icon: Icon(Icons.verified_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                      )),
                )
              ],
            )),
      ),
    );
  }
}
