import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final statusBar = mediaQuery.padding.top;
    final heighBody = mediaQuery.size.height - statusBar - kToolbarHeight;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Query Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              width: mediaQuery.size.width,
              height: heighBody * 0.5,
            ),
            Container(
              color: Colors.red,
              width: mediaQuery.size.width * 0.25,
              height: heighBody * 0.5,
            ),
          ],
        ),
      ),
    );
  }
}
