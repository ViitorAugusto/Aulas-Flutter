import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:count_bloc/models/product.dart';
import 'package:count_bloc/repositories/product_repository.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductRepository productRepository;

  ProductCubit({required this.productRepository}) : super(ProductInitial());

  Future<void> fetchProducts() async {
    try {
      emit(ProductLoading());
      final products = await productRepository.fetchProducts();
      emit(ProductLoaded(products));
    } catch (e) {                                                             
      emit(ProductError('Failed to fetch products'));
    }
  }
}
