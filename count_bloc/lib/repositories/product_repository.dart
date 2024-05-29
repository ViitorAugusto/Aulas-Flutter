
import 'package:count_bloc/models/product.dart';
import 'package:count_bloc/services/products_api.dart';

class ProductRepository {
  final ProductService productService;

  ProductRepository({required this.productService});

  Future<List<Product>> fetchProducts() async {
    return await productService.fetchProducts();
  }
}
