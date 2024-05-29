
import 'package:flutter/material.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Provider Page'),
        ),
        body: Builder(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Provider')),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Change Notifier'))
                  ],
                ),
              ),
            );
          },
        ));
  }
}
