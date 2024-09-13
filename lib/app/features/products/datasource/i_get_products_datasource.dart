import 'package:teste_arch_get/app/features/products/model/product_model.dart';

abstract class IGetProductsDatasource {
  Future<List<ProductModel>> get();
}
