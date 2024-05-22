import 'package:flutter/material.dart';
import 'package:primeiro_app/pages/bem-vindo/auth/auth_login_page.dart';
import '../../helper/paletas.dart';

class BemVindoPage extends StatelessWidget {
  const BemVindoPage({super.key});

  void _goToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return page;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/imagens/rapaz-sorrindo.jpg'),
                fit:
                    BoxFit.cover, // Garante que a imagem cubra todo o container
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 20,
            right: 20,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: const BoxDecoration(
                            color: Paletas.primaria,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                left: 12.0, right: 12.0, top: 2.0, bottom: 2.0),
                            child: Text(
                              'Fleeky',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Venda muito de forma fácil, rápida e segura.',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 0, right: 0, top: 60, bottom: 0),
                      child: Center(
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor: const Color.fromARGB(
                                  255, 255, 253, 253), // Cor do texto
                              backgroundColor: const Color(
                                  0xFFFC2D65), // Cor de fundo do botão
                              textStyle: const TextStyle(
                                fontSize: 16,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                              minimumSize: const Size(400, 50),
                            ),
                            child: const Text('CRIAR CONTA',
                                style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 0, right: 0, top: 20, bottom: 0),
                      child: Center(
                        child: TextButton(
                          onPressed: () =>
                              _goToPage(context, const AuthLoginPage()),
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.transparent,
                            disabledForegroundColor:
                                Colors.grey.withOpacity(0.38),
                            elevation: 5,
                            textStyle: const TextStyle(
                              fontSize: 16,
                            ),
                            padding: const EdgeInsets.all(4),
                            minimumSize: const Size(400, 50),
                            side: const BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          child: const Text('LOGIN',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
