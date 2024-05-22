import 'package:flutter/material.dart';
import 'package:flutter_mao_na_massa/navegacao_params/detalhe.dart';
// import 'package:flutter_mao_na_massa/navegacao/page1.dart';
// import 'package:flutter_mao_na_massa/navegacao/page3.dart';
// import 'package:flutter_mao_na_massa/navegacao/page4.dart';
import 'package:flutter_mao_na_massa/navegacao_params/lista.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Lista(),
      initialRoute: '/navegacao',
      routes: {
        // '/page1': (context) => const Page1(),
        // '/page3': (context) => const Page3(),
        // '/page4': (context) => const Page4(),
        '/detalhe': (_) => const Detalhe(),
      },
    );
  }
}


