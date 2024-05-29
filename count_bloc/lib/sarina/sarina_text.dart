import 'package:flutter/material.dart';

class SarinaText extends StatelessWidget {
  const SarinaText({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.9,
      height: screenHeight * 0.12,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '“It is better to conquer yourself than\nto win a thousand battles”',
              style: TextStyle(
                color: Colors.black,
                fontSize: screenHeight * 0.02,
              ),
            ),
            const Icon(
              Icons.format_quote,
              color: Colors.black,
              size: 40,
            )
          ],
        ),
      ),
    );
  }
}
