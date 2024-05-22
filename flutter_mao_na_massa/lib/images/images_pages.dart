import 'package:flutter/material.dart';

class ImagesPages extends StatelessWidget {
  const ImagesPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fonto Ubuntu Sans => Imagens',
          style: TextStyle(fontFamily: 'UbuntuSans'),
        ),
        backgroundColor: Colors.blue[200],
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.blue[400],
              child: Image.asset(
                'assets/imagens.png',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.blue[400],
              child: Image.asset(
                'assets/imagens2.png',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 300,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/imagens/imagens3.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Center(
                  child: Text('Imagem 3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.black54,
                      ))),
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.blue[400],
              child: const Image(
                image: NetworkImage(
                    'https://sm.ign.com/ign_br/screenshot/default/gzdydkwmllrjofb-800x450-nopad_4hsm.jpg'),
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
