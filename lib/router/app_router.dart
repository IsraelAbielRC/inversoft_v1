import 'package:inversoft_v1/Models/menu_options_model.dart';
import 'package:inversoft_v1/Screens/rutas.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const initialRoute = 'Home';
  static final menuOptions = <MenuOption>{
    MenuOption(
        name: 'Inputs',
        router: 'inputs-screen',
        icon: Icons.settings_input_svideo_outlined,
        widget: const InputsScreen()),
    MenuOption(
        name: 'ListView Uno',
        router: 'ListView-1',
        icon: Icons.list_alt_outlined,
        widget: const ListView1Screen()),
    MenuOption(
        name: 'ListView Dos',
        router: 'ListView-2',
        icon: Icons.list_sharp,
        widget: const ListView2Screen()),
    MenuOption(
        name: 'Contador',
        router: 'couter-screen',
        icon: Icons.countertops,
        widget: const CouterScreen()),
    MenuOption(
        name: 'Card',
        router: 'card-screen',
        icon: Icons.phone_android_outlined,
        widget: const CardScreen()),
    MenuOption(
        name: 'Alerta',
        router: 'alerta-screen',
        icon: Icons.alarm_add_outlined,
        widget: const AlertScreen()),
    MenuOption(
        name: 'Avatar',
        router: 'avatar-screen',
        icon: Icons.align_vertical_top_sharp,
        widget: const AvatarScreen()),
    MenuOption(
        name: 'Animated',
        router: 'animated-screen',
        icon: Icons.play_arrow_outlined,
        widget: const AnimatedScreen()),
  };
  static Map<String, Widget Function(BuildContext)> getAppRouters() {
    Map<String, Widget Function(BuildContext)> routers = {};
    for (final menu in menuOptions) {
      routers.addAll({menu.router: (BuildContext c) => menu.widget});
    }
    return routers;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) =>
      MaterialPageRoute(builder: (c) => const HomeScreen());
}
