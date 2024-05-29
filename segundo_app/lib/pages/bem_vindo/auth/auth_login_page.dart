import 'package:flutter/material.dart';
import 'package:segundo_app/pages/home/home_fleeky.dart';

class AuthLoginPage extends StatelessWidget {
  const AuthLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              tooltip: 'Fechar',
              icon: const Icon(Icons.close),
              iconSize: 32,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
      resizeToAvoidBottomInset:
          false, // Evita redimensionamento ao exibir o teclado
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding:
                  const EdgeInsets.only(bottom: 120.0), // Espaço para os botões
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, left: 16, right: 16),
                    child: const Row(
                      children: [
                        Center(
                          child: Text(
                            'Faça seu login',
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Email',
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                              )),
                          //autovalidateMode: AutovalidateMode.onUserInteraction,
                          // validator: (String? value) {
                          //   if (value == null || value.isEmpty) {
                          //     return 'Por favor, insira um e-mail';
                          //   }
                          //   return null;
                          // },
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          decoration: const InputDecoration(labelText: 'Senha'),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                // Cor de fundo do container do botão
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 0, right: 0, top: 20, bottom: 10),
                      child: Center(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const HomeFleeky(),
                                ),
                              );
                            },
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
                            child: const Text('ENTRAR',
                                style: TextStyle(fontWeight: FontWeight.bold))),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        textStyle: const TextStyle(fontSize: 16),
                        minimumSize: const Size(double.infinity, 48),
                        backgroundColor: Colors.white70,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        foregroundColor: Colors.black,
                      ),
                      child: const Text('Esqueci a senha'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
