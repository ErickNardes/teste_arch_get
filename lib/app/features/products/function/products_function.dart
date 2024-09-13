import 'package:teste_arch_get/app/features/products/domain/usecase/i_get_products_usecase.dart';
import 'package:teste_arch_get/app/features/products/model/product_model.dart';

class ProductsFunctions {
  Future<List<ProductModel>> getProducts({
    required IGetProductsUsecase iGetProductsUecase,
  }) async {
    final products = await iGetProductsUecase.get();
    return products;
  }

  ProductModel selectProduct(ProductModel product) {
    return product;
  }
}
