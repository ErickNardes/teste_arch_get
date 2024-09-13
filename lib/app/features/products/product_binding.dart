import 'package:get/get.dart';
import 'package:teste_arch_get/app/features/products/controller/products_controller.dart';
import 'package:teste_arch_get/app/features/products/datasource/i_get_products_datasource.dart';
import 'package:teste_arch_get/app/features/products/domain/repository/i_get_products_repository.dart';
import 'package:teste_arch_get/app/features/products/domain/usecase/get_products_usecase.dart';
import 'package:teste_arch_get/app/features/products/function/products_function.dart';
import 'package:teste_arch_get/app/features/products/domain/usecase/i_get_products_usecase.dart';
import 'package:teste_arch_get/app/features/products/infra/datasource/get_products_datasource.dart';
import 'package:teste_arch_get/app/features/products/infra/repository/get_products_repository.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IGetProductsDatasource>(GetProductsDatasource.new);
    Get.lazyPut<IGetProductsRepository>(
        () => GetProductsRepository(Get.find<IGetProductsDatasource>()));
    Get.lazyPut<IGetProductsUsecase>(
        () => GetProductsUsecase(Get.find<IGetProductsRepository>()));
    Get.lazyPut<ProductsFunctions>(() => ProductsFunctions());
    Get.lazyPut<ProductsController>(
        () => ProductsController(Get.find<ProductsFunctions>()));
  }
}
