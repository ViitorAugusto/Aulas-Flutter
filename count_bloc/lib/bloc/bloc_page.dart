import 'package:flutter/material.dart';

class BlocPage extends StatelessWidget {
  const BlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc'),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Bloc',
                    style: TextStyle(color: Colors.red, fontSize: 20)),
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
          ],
        ),
      ),
      
    );
  }
}
