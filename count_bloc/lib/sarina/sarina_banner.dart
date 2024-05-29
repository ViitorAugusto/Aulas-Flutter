import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: BannerWidget(),
        ),
      ),
    );
  }
}

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.9, // 90% da largura da tela
      padding: EdgeInsets.all(screenWidth * 0.04), // Padding responsivo
      decoration: BoxDecoration(
        color: Colors.orange.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1 on 1 Sessions',
                style: TextStyle(
                  fontSize: screenHeight * 0.03,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Text(
                'Let’s open up to the things that\nmatter the most',
                style: TextStyle(
                  fontSize: screenHeight * 0.02,
                  color: Colors.brown,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Row(
                children: [
                  Text(
                    'Book Now',
                    style: TextStyle(
                      fontSize: screenHeight * 0.025,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  Icon(
                    Icons.calendar_today,
                    color: Colors.orange,
                    size: screenHeight * 0.025,
                  ),
                ],
              ),
            ],
          ),
           Image.asset(
            'assets/image/Meetup.png', // Substitua pelo caminho da sua imagem
            fit: BoxFit.contain, // Ajusta a imagem mantendo a proporção
            width: screenWidth * 0.2, // Largura responsiva
            height: screenHeight * 0.1, // Altura responsiva
          ),
        ],
      ),
    );
  }
}
