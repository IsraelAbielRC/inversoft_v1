import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    Key? key,
    required this.aumentar,
    required this.resetear,
    required this.disminuir,
  }) : super(key: key);
  final Function aumentar;
  final Function resetear;
  final Function disminuir;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => disminuir()),
      FloatingActionButton(
          child: const Icon(Icons.equalizer_outlined),
          onPressed: () => resetear()),
      FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => aumentar())
    ]);
  }
}
