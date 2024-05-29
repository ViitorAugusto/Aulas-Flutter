import 'package:flutter/material.dart';
import 'package:segundo_app/pages/home/bottom_bar_navigator.dart';
import 'package:segundo_app/provider/provider_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
        ),
        routes: {
          '/provider': (context) => const ProviderPage(),
        },
        home: const BottomBarNavigatorPage(),
        
        );
  }
}
