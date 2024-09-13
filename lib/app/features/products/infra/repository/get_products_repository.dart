import 'package:teste_arch_get/app/features/products/datasource/i_get_products_datasource.dart';
import 'package:teste_arch_get/app/features/products/model/product_model.dart';
import 'package:teste_arch_get/app/features/products/domain/repository/i_get_products_repository.dart';

class GetProductsRepository implements IGetProductsRepository {
  final IGetProductsDatasource _datasource;

  const GetProductsRepository(this._datasource);
  @override
  Future<List<ProductModel>> get() async {
    try {
      return await _datasource.get();
    } catch (e) {
      throw Exception('Failed to get products: $e');
    }
  }
}
