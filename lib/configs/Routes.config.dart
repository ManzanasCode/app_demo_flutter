import 'package:flutter/material.dart';
import '../models/Menu.model.dart';
import '../screens/screen.import.dart';

class RouteConfigs {
  static const initialRoute = "home";

  static Map<String, Widget Function(BuildContext)> routesMap = routes.fold({}, (map, item) {
    map[item.route] = item.builder;
    return map;
  });

  static List<MenuModel> routes = [
    MenuModel(
      route: 'listview',
      icon: Icons.list_alt_outlined,
      nameRoute: 'List view',
      builder: (_) => const ListMenuScreen(),
      screen: const ListMenuScreen(),
    ),
    MenuModel(
      route: 'home',
      icon: Icons.home_max,
      nameRoute: 'Home',
      builder: (_) => const HomeScreen(),
      screen: const HomeScreen(),
    ),
    MenuModel(
      route: 'counter',
      icon: Icons.plus_one,
      nameRoute: 'Counter',
      builder: (_) => const CounterScreen(),
      screen: const CounterScreen(),
    ),
    MenuModel(
      route: 'card',
      icon: Icons.plus_one,
      nameRoute: 'Card',
      builder: (_) => const CardScreen(),
      screen: const CardScreen(),
    ),
    MenuModel(
      route: 'alert',
      icon: Icons.plus_one,
      nameRoute: 'Alert',
      builder: (_) => const AlertScreen(),
      screen: const AlertScreen(),
    ),

  ];

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const ListMenuScreen());
  }
}
