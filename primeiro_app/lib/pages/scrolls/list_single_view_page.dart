import 'package:flutter/material.dart';

class ListSingleViewPage extends StatelessWidget {
  const ListSingleViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Page'),
      ),
      body: ListView.separated(
        itemCount: 100,
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.deepPurple,
            height: 10,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          );
        },
        itemBuilder: (context, index) {
          //print('Carregado..... Item $index');
          return ListTile(
            subtitle: const Text('Subtitulo'),
            title: Text('Item $index'),
            leading: CircleAvatar(
              child: Text('$index'),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        },
      ),
    );
  }
}
