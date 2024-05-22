import 'package:flutter/material.dart';

class SingleChildScrollsView extends StatelessWidget {
  const SingleChildScrollsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('single_child_scrolls_view'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            100,
            (index) => ListTile(
              title: Text('Item $index'),
            ),
          ),
        ),
      ),
    );
  }
}
