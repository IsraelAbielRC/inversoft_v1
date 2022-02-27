import 'package:flutter/material.dart';
import 'package:inversoft_v1/Screens/rutas.dart';
import 'package:inversoft_v1/Themes/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes del Home'),
          elevation: 0,
        ),
        body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
            leading: Icon(
              AppRouter.menuOptions.toList()[i].icon,
              color: AppTheme.primary,
            ),
            title: Text(AppRouter.menuOptions.toList()[i].name),
            onTap: () {
              Navigator.pushNamed(
                  context, AppRouter.menuOptions.toList()[i].router);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRouter.getAppRouters().length,
        ));
  }
}
