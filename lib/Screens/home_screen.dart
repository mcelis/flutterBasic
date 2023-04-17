import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  //propiedades
  @override
  Widget build(BuildContext context) {
    //variables
    const fontSize30 = TextStyle(fontSize: 30);
    int counter = 10;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
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
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counter++;
          print('Hola mundo');
        },
      ),
    );
  }
}
