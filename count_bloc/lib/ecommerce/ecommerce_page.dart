import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:count_bloc/cubits/product_cubit.dart';
import 'package:count_bloc/models/product.dart';

class EcommercePage extends StatelessWidget {
  const EcommercePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecommerce Page'),
      ),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state is ProductLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ProductLoaded) {
            return ListView.builder(
              itemCount: state.products.length,
              itemBuilder: (context, index) {
                final product = state.products[index];
                return ListTile(
                  leading: Image.network(product.image),
                  title: Text(product.title),
                  subtitle: Text('\$${product.price}'),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/productDetail',
                      arguments: product,
                    );
                  },
                );
              },
            );
          } else if (state is ProductError) {
            return Center(
              child: Text(state.message),
            );
          } else {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  context.read<ProductCubit>().fetchProducts();
                },
                child: const Text('Load Products'),
              ),
            );
          }
        },
      ),
    );
  }
}
