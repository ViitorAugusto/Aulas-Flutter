import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:count_bloc/models/product.dart';

class ProductService {
  final String baseUrl;

  ProductService({required this.baseUrl});

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse('$baseUrl/products'));

    

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
