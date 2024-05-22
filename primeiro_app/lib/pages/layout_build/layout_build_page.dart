import 'package:flutter/material.dart';

class LayoutBuildPage extends StatelessWidget {
  const LayoutBuildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Build'),
      ),
      body: Center(child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.blue,
                width: constraints.maxHeight,
                height: constraints.maxHeight * 0.5,
              ),
              Container(
                color: Colors.red,
                width: constraints.maxWidth * 0.50,
                height: constraints.maxHeight * 0.25,
              ),
            ],
          );
        },
      )),
    );
  }
}
