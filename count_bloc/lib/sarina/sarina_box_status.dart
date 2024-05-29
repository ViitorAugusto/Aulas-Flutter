import 'package:flutter/material.dart';

class SarinaBoxStatus extends StatelessWidget {
  final String name;
  final String imagePath;
  final String color;
  const SarinaBoxStatus({super.key, required this.name, required this.imagePath, required this.color});

Color _colorFromHex(String hexColor) {
    hexColor = hexColor.replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor'; // Adiciona opacidade se não estiver incluída
    }
    return Color(int.parse(hexColor, radix: 16));
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, top: 16, bottom: 8),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: _colorFromHex(color),
              borderRadius: BorderRadius.circular(25),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePath, // Substitua pelo caminho da sua imagem
                fit: BoxFit.none,
                width: 60,
                height: 60,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(name, style: const TextStyle(color: Colors.black, fontSize: 16)),
        ],
      ),
    );
  }
}
