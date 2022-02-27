import 'package:flutter/material.dart';

import '../widgets/rutas_widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
          elevation: 0,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: const [
            CardCustom(),
            CardDosCustom(
              imagenURL:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCQGE6YeX95kSHWLVal4y1QllDy20IK7AdAQ&usqp=CAU',
            ),
            CardDosCustom(
              imagenURL:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs4b01jD4Gj7I1W8zZAwpo-pXaFaNM-uX4oQ&usqp=CAU',
            ),
            CardDosCustom(
              imagenURL:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7dJ-ByDXXclKjlqfsT7xz6c0Scs_JyFTRTQ&usqp=CAU',
            )
          ],
        ));
  }
}
