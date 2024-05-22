import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegacao_params/detalhe.dart';

class Lista extends StatelessWidget {
  const Lista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Itens'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/detalhe', arguments: 'Item 1');
                },
                child: const Text('Item 1'),
              ),
              TextButton(
                  onPressed: () {
                    //   Navigator.of(context).push(MaterialPageRoute(
                    //       settings:
                    //           const RouteSettings(name: 'detalhe', arguments: {
                    //         'id': 10,
                    //       }),
                    //       builder: (context) => const Detalhe()));
                    // },
                    Navigator.pushNamed(context, '/detalhe',
                        arguments: {'id': 10});
                  },
                  child: const Text('Detalhes')),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/detalhe', arguments: 'Item 2');
                },
                child: const Text('Item 2'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/detalhe', arguments: 'Item 3');
                },
                child: const Text('Item 3'),
              ),
            ],
          ),
        ));
  }
}
