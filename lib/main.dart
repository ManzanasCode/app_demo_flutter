import 'package:flutter/material.dart';
import 'configs/Routes.config.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: const ListMenuScreen(),
      initialRoute: RouteConfigs.initialRoute,
      routes: RouteConfigs.routesMap,
      onGenerateRoute: (settings) => RouteConfigs.onGenerateRoute(settings),
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.pinkAccent,
        appBarTheme: const AppBarTheme(
          color: Colors.pinkAccent,
          elevation: 10
        )
      )
    );
  }
}