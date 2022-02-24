import 'package:flutter/cupertino.dart';

class MenuOption {
  MenuOption({ required this.name, required this.router, required this.icon, required this.widget});
  final String router;
  final String name;
  final IconData icon;
  final Widget widget;
}