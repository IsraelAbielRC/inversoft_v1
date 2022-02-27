import 'package:flutter/material.dart';
import 'package:inversoft_v1/Themes/theme.dart';

class CardCustom extends StatelessWidget {
  const CardCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('Soy un titulo'),
            leading: Icon(
              Icons.phone,
              color: AppTheme.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancelar'),
                ),
                TextButton(onPressed: () {}, child: const Text('Aceptar')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
