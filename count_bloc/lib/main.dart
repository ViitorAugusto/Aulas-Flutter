import 'package:count_bloc/ecommerce/ecommerce_details_page.dart';
import 'package:count_bloc/services/products_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:count_bloc/ecommerce/ecommerce_page.dart';
import 'package:count_bloc/repositories/product_repository.dart';
import 'package:count_bloc/cubits/product_cubit.dart';
import 'package:count_bloc/bloc/bloc_page.dart';
import 'package:count_bloc/cubit/cubit_page.dart';
import 'package:count_bloc/home_page.dart';
import 'package:count_bloc/sarina/sarina_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final testEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final productService = ProductService(baseUrl: 'https://fakestoreapi.com');
    final productRepository = ProductRepository(productService: productService);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductCubit(productRepository: productRepository),
        ),
      ],
      child: MaterialApp(
        routes: {
          '/ApiEcommerce': (_) => const EcommercePage(),
          '/cubit': (_) => const CubitPage(),
          '/bloc': (_) => const BlocPage(),
          '/sarina': (_) => const SarinaPage(),
          '/productDetail': (context) => const ProductDetailPage(),
        },
        home: const Scaffold(
          body: HomePage(),
        ),
      ),
    );
  }
}
