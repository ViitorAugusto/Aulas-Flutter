import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:primeiro_app/pages/cidades/model/cidade.dart';

class CidadePage extends StatefulWidget {
  const CidadePage({super.key});

  @override
  State<CidadePage> createState() => _CidadePageState();
}

class _CidadePageState extends State<CidadePage> {
  var cidades = <Cidade>[];

  @override
  void initState() {
    super.initState();
    _loadCidades();
  }

  Future<void> _loadCidades() async {
    final cidadesJson = await rootBundle.loadString('assets/cidades.json');
    setState(() {
      var cidadesList = json.decode(cidadesJson);
      cidades = cidadesList.map<Cidade>((c) => Cidade.fromMap(c)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cidades'),
      ),
      body: ListView.builder(
        itemCount: cidades.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cidades[index].cidade),
            subtitle: Text(cidades[index].estado),
          );
        },
      ),
    );
  }
}
