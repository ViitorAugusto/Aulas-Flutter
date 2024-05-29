import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CubitPage extends StatelessWidget {
  const CubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cubit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Cubit',
                style: TextStyle(color: Colors.blue, fontSize: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                    onPressed: () {},
                    label: const Text('Adicionar'),
                    icon: const Icon(Icons.add)),
                TextButton.icon(
                    onPressed: () {},
                    label: const Text('Remover'),
                    icon: const Icon(Icons.remove)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
