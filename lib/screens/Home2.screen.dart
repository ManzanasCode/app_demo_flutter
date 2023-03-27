import 'package:flutter/material.dart';

import '../configs/Routes.config.dart';


void main() => runApp(const HomeScreen());

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //const options = ['mega man', 'resident evil', 'fortnite'];
    
    final listViewBuilder = ListView.separated(
      itemBuilder: (context, index) => ListTile(
        title: Text(RouteConfigs.routes[index].nameRoute),
        trailing: Icon(RouteConfigs.routes[index].icon , color: Colors.blueAccent,),
        onTap: () {
          //print('object: ${RouteConfigs.routes[index].route}' );
          //print('object: ${RouteConfigs.routes[index].screen}' );
          

          //final route = MaterialPageRoute(builder: (context) => const CardScreen());
          //Navigator.pushReplacement(context, route );
          
          final route = MaterialPageRoute(builder: RouteConfigs.routes[index].builder );
          
          Navigator.push(context, route );

        },
      ),
      separatorBuilder: (_, __) => const Divider(),
      itemCount: RouteConfigs.routes.length,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home title bar'),
        ),
        body: listViewBuilder
      ),
    );
  }
}