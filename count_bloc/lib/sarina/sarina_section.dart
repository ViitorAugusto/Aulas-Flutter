import 'package:flutter/material.dart';

class SarinaSection extends StatelessWidget {
  final IconData icon;
  final String label;
 const SarinaSection({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: screenWidth * 0.43,
              height: screenHeight * 0.1,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(15),
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Icon(
                  icon,
                  color: Colors.grey,
                  size: 30,
                ),
                  const SizedBox(width: 8),
                  Text(label,
                      style: const TextStyle(color: Colors.black, fontSize: 16)),
                ],
              )),
        ],
      ),
    );
  }
}
