import 'package:flutter/material.dart';
import 'package:inversoft_v1/Themes/theme.dart';

class CardDosCustom extends StatelessWidget {
  const CardDosCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(children: const [
        FadeInImage(
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCQGE6YeX95kSHWLVal4y1QllDy20IK7AdAQ&usqp=CAU'),
          placeholder: AssetImage('assets/gifs/jar-loading.gif'),
          width: double.infinity,
          height: 250,
          fit: BoxFit.cover,
        )
      ]),
    );
  }
}
