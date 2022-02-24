import 'package:flutter/material.dart';
import 'package:inversoft_v1/Screens/rutas.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'Home',
      routes: {
        'Home': (context) => const HomeScreen(),
        'ListView1': (context) => const ListView1Screen(),
        'ListView2': (context) => const ListView2Screen(),
      },
      onGenerateRoute: (settings) =>
          MaterialPageRoute(builder: (c) => const ListView2Screen()),
      //home: ListView2Screen()
    );
  }
}
