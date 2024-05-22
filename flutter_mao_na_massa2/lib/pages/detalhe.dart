import 'package:flutter/material.dart';

class Detalhe extends StatelessWidget {
  const Detalhe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe'),
      ),
      body: Center(
        child: TextButton(onPressed: () {}, child: const Text('Detalhe')),
      ),
    );
  }
}
