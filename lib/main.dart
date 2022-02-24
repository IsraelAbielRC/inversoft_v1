import 'package:flutter/material.dart';
import 'package:inversoft_v1/router/app_router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouter.initialRoute,
      routes: AppRouter.getAppRouters(),
      onGenerateRoute: (s) => AppRouter.onGenerateRoute(s),
    );
  }
}
