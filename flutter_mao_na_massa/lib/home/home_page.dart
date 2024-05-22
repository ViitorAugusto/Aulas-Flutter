import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo parte 10'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Sobre'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Contato'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: const  BorderRadius.horizontal(
                left: Radius.circular(80),
                right: Radius.circular(20),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.blueGrey,
                  blurRadius: 20,
                  spreadRadius: 1,
                  offset: Offset(10, 5),
                ),
              ],
              color: Colors.red[900],
            ),
            child: const Center(
              child: Text(
                'Olá, mundo!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            )),
      ),
    );
  }
}
