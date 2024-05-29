import 'package:flutter/material.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Disponível para saque',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'R\$ 10,31',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Em liberação: R\$ -6,72',
            style: TextStyle(
              fontSize: 14,
              color: Colors.red[700],
            ),
          ),
          const SizedBox(height: 16),
         
        ],
      ),
    );
  }
}

