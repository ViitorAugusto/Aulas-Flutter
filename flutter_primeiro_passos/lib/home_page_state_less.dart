import 'package:flutter/material.dart';

class HomePageStateLess extends StatelessWidget {
  HomePageStateLess({super.key});

  final String text = 'Hello World!';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page Feita '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text),
          ],
        ),
      ),
    );
  }
}
