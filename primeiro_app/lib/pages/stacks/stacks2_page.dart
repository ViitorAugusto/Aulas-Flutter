import 'package:flutter/material.dart';


class StacksPage2 extends StatelessWidget {
  const StacksPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://content-media.astrologialuzesombra.com.br/wp-content/uploads/2023/11/17220152/planetas-retrogrados-em-2024-1024x585.jpg'),
                fit: BoxFit
                    .cover, // Adicionado para garantir que a imagem cubra todo o container
              ),
            ),
          ),
          Positioned(
            bottom: 48,
            left: 10,
            right: 10,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 12,
              color: Colors.white,
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Stacks',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Stacks são widgets que empilham seus filhos um sobre o outro.',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
