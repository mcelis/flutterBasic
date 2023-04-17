import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //propiedades
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    //variables
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Numero de clicks', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1),
            onPressed: () => setState(() => counter--),
          ),
          //const SizedBox(width: 20),
          FloatingActionButton(
            child: const Icon(Icons.restore),
            onPressed: () => setState(() => counter = 0),
          ),
          //const SizedBox(width: 20), // es como un BR en web
          FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1),
            onPressed: () => setState(() => counter++),
          ),
        ],
      ),
    );
  }
}
