import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegacao/page1.dart';

class HomePageNav extends StatelessWidget {
  const HomePageNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        settings: const RouteSettings(name: '/page1'),
                        builder: (context) => const Page1(),
                      ),
                    );
                  },
                  child: const Text('Página 1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Botão POP'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/page3');
                  },
                  child: const Text('Página 3'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/page4');
                  },
                  child: const Text('Página 4'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
