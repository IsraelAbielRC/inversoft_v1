import 'package:flutter/material.dart';
import 'package:inversoft_v1/Themes/theme.dart';

class CardDosCustom extends StatelessWidget {
  final String imagenURL;
  final String? descripcion;

  const CardDosCustom({
    Key? key,
    required this.imagenURL,
    this.descripcion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      shadowColor: AppTheme.primary.withOpacity(0.5),
      elevation: 10,
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(imagenURL),
          placeholder: const AssetImage('assets/gifs/jar-loading.gif'),
          width: double.infinity,
          height: 250,
          fit: BoxFit.cover,
        ),
        if (descripcion != null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(descripcion!),
          )
      ]),
    );
  }
}
