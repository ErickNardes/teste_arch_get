import 'package:teste_arch_get/app/features/products/model/product_model.dart';

abstract class IGetProductsRepository {
  Future<List<ProductModel>> get();
}
