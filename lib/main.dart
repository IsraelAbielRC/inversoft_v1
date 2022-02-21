import 'package:flutter/material.dart';
import 'package:inversoft_v1/Screens/main_Screen.dart';

void main(){
  runApp(const Inversoft());
}
class Inversoft extends StatelessWidget {
  //Constructor con key
  const Inversoft({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Center(
        child: MainScreen(),
      ),
    );
  }
  
}