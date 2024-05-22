import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/detalhe');
            },
            child:const Text('Detalhe')),
      ),
    );
  }
}
