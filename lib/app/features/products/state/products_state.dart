import 'package:get/get.dart';

import 'package:teste_arch_get/app/features/products/model/product_model.dart';

class ProductsState {
  RxList<ProductModel> listProducts = <ProductModel>[].obs;
  Rx<ProductModel>? productSelected;
  ProductsState({
    required this.productSelected,
    required this.listProducts,
  });

  factory ProductsState.init() => ProductsState(
        listProducts: <ProductModel>[].obs,
        productSelected: null,
      );
}
