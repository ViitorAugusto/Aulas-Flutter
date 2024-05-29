import 'package:flutter/material.dart';
import 'package:segundo_app/pages/home/widgets/balance_widget.dart';
import 'package:segundo_app/pages/home/widgets/card_balance_widget.dart';
import 'package:segundo_app/pages/home/widgets/saldo_widget.dart';

class HomeFleeky extends StatefulWidget {
  const HomeFleeky({super.key});

  @override
  State<HomeFleeky> createState() => _HomeFleekyState();
}

class _HomeFleekyState extends State<HomeFleeky> {
  bool isObscure = true;
  static const Color iconColor = Color(0xFFFC2D65);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Fleeky Go!'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Olá, Vitor Augusto',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.person, color: iconColor),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          isObscure ? Icons.visibility : Icons.visibility_off,
                          color: iconColor,
                        ),
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
              const Row(
                children: [
                  BalanceWidget(),
                ],
              ),
              const Row(
                children: [
                  SalesWidget(),
                ],
              ),
              const Row(
                children: [Dashboard()],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Escolha um lugar e vá!',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Divirta-se!',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
