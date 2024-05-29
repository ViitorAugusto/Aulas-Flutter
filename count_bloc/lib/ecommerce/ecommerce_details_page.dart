import 'package:flutter/material.dart';
import 'package:count_bloc/models/product.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(product.image, height: 250),
            ),
            const SizedBox(height: 16),
            Text(
              product.title,
            ),
            const SizedBox(height: 8),
            Text(
              '\$${product.price}',
            ),
            const SizedBox(height: 16),
            Text(
              product.description,
            ),
            const SizedBox(height: 16),
            Text(
              'Category: ${product.category}',
            ),
            const SizedBox(height: 16),
            Text(
              'Rating: ${product.rating.rate} (${product.rating.count} reviews)',
            ),
          ],
        ),
      ),
    );
  }
}
