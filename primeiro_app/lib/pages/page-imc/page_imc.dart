import 'package:flutter/material.dart';
import 'package:primeiro_app/pages/page-imc/setState/imc_setstate_page.dart';

class HomePageImc extends StatelessWidget {
  const HomePageImc({super.key});

  void _goToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return page;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IMC'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () => _goToPage(context, const ImcSetStatePage()),
              child: const Text('SetState')),
          ElevatedButton(onPressed: () {}, child: const Text('ValueNotifier')),
          ElevatedButton(onPressed: () {}, child: const Text('ChangeNotifier')),
          ElevatedButton(
              onPressed: () {}, child: const Text('Bloc Patterns (streams)')),
        ],
      )),
    );
  }
}
