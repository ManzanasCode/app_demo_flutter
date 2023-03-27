import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;

  void increaseCount (){
    counter++;
    setState(() { });
  }

  void decreaseCount (){
    counter--;
    setState(() { });
  }

  void resetCount (){
    counter = 0;
    setState(() { });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('header home'),
        elevation: 15,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Contador', style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            )),
            Text('$counter', style: const TextStyle(
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: CustomFloatingActionBtn( increaseFn: increaseCount, decreaseFn: decreaseCount, resetFn: resetCount,),
      
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Pays',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Customers',
          ),
        ],
      ),
    );
  }
}

class CustomFloatingActionBtn extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;
  
  const CustomFloatingActionBtn({
    super.key, 
    required this.increaseFn, 
    required this.decreaseFn, required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.lightGreen,
          onPressed: () => decreaseFn(),
          tooltip: 'Increment Counter',
          child: const Icon(Icons.exposure_minus_1_outlined),
        ),
        const SizedBox( width: 20,),
        FloatingActionButton(
          backgroundColor: Colors.lightGreen,
          onPressed: () => resetFn(),
          tooltip: 'Increment Counter',
          child: const Icon(Icons.exposure_zero),
        ),
        const SizedBox( width: 20,),
        FloatingActionButton(
          backgroundColor: Colors.lightGreen,
          onPressed: () => increaseFn(),
          tooltip: 'Increment Counter',
          child: const Icon(Icons.exposure_plus_1_outlined),
        ),
      ],
    );
  }
}
