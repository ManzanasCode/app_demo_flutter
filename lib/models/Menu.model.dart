import 'package:flutter/material.dart' show BuildContext, IconData, Widget;

class MenuModel {
  final String route;
  final IconData icon;
  final String nameRoute;
  final Widget screen;
  final Widget Function(BuildContext) builder;

  MenuModel(
      {required this.route,
      required this.icon,
      required this.nameRoute,
      required this.screen,
      required this.builder});
}

