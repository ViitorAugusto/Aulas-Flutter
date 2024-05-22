import 'package:flutter/material.dart';

class HomePageStateFull extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return _HomePageStateFullState();
  }
}

class _HomePageStateFullState extends State<HomePageStateFull> {
  String texto = 'Hello World!';


  @override 
  void initState() {
    super.initState();
    print('initState');
  }

@override 
void didChangeDependencies() {
  print('didChangeDependencies');
  super.didChangeDependencies();
}

  @override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page StateFull '),
      ),
      body: Center(
        child: Column(
          children: [
              Text(texto),
              TextButton(
                onPressed:() {
                  setState(() {
                    texto = 'Hello World! Clicado';
                  });
                  }, 
                  child: const Text('Clique aqui'),
                  ),
          ],
        ),
      ),
    );
  }
}