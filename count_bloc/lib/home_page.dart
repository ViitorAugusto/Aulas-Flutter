import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usando Bloc e Cubit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/ApiEcommerce');
                },
                child: const Text('E-commerce',
                    style: TextStyle(color: Colors.purple, fontSize: 20))),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/bloc');
                },
                child: const Text('Bloc',
                    style: TextStyle(color: Colors.red, fontSize: 20))),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cubit');
                },
                child: const Text('Cubit ',
                    style: TextStyle(color: Colors.blue, fontSize: 20))),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sarina');
                },
                child: const Text('Sarina!',
                    style: TextStyle(color: Colors.green, fontSize: 20))),
          ],
        ),
      ),
    );
  }
}
