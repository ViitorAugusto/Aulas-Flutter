
import 'package:flutter/material.dart';

class StacksPage extends StatelessWidget {
  const StacksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black,
          ),
          Align(
            child: Container(
              color: Colors.blue,
              height: 60,
              width: 60,
            ),
          ),
        ],
      ),
    );
  }
}
