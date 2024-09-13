import 'package:teste_arch_get/app/features/products/domain/usecase/i_get_products_usecase.dart';
import 'package:teste_arch_get/app/features/products/domain/repository/i_get_products_repository.dart';
import 'package:teste_arch_get/app/features/products/model/product_model.dart';

class GetProductsUsecase implements IGetProductsUsecase {
  final IGetProductsRepository _repository;

  const GetProductsUsecase(this._repository);
  @override
  Future<List<ProductModel>> get() async {
    return await _repository.get();
  }
}
