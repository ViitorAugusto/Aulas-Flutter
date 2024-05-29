import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final int count;
  final String amount;

  const StatusCard({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.count,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
            final width = MediaQuery.of(context).size.width;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        width: width * 0.27, // Defina uma largura fixa para cada cartão
        padding: const EdgeInsets.all(1.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: iconColor,
              size: 30,
            ),
            const SizedBox(height: 8),
            Text(
              count.toString(),
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              amount,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
        final width = MediaQuery.of(context).size.width;
    return  Padding(
      padding: EdgeInsets.only(left: width * 0.01, right: width * 0.01),
      child:  SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Permitir rolagem horizontal
        child: Row(
          children: [
            const StatusCard(
              icon: Icons.check_circle,
              iconColor: Colors.green,
              title: 'Pagas',
              count: 4,
              amount: 'R\$ 4,00',
            ),
            SizedBox(width: width * 0.01),
            const StatusCard(
              icon: Icons.access_time,
              iconColor: Colors.orange,
              title: 'Pendentes',
              count: 9,
              amount: 'R\$ 87.665,00',
            ),
            SizedBox(width: width * 0.01),
            const StatusCard(
              icon: Icons.cancel,
              iconColor: Colors.red,
              title: 'Canceladas',
              count: 9,
              amount: 'R\$ 9,20',
            ),
          ],
        ),
      ),
    );
  }
}

