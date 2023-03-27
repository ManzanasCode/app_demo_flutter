import 'package:flutter/material.dart';

class ListMenuScreen extends StatelessWidget {
   
  const ListMenuScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    const options = ['mega man', 'resident evil', 'fortnite'];
    
    final listViewBuilder = ListView.separated(
      itemBuilder: (context, index) => ListTile(
        title: Text(options[index]),
        trailing: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.green,),
        onTap: () {
          //print('object');
        },
      ),
      separatorBuilder: (_, __) => const Divider(),
      itemCount: options.length,
    );



    return  Scaffold(
      appBar: AppBar(
        title: const Text('List view'),
        elevation: 15,
      ),
      body: listViewBuilder
    );
  }
}