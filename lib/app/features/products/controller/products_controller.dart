import 'package:get/get.dart';
import 'package:teste_arch_get/app/features/products/domain/usecase/i_get_products_usecase.dart';
import 'package:teste_arch_get/app/features/products/function/products_function.dart';
import 'package:teste_arch_get/app/features/products/model/product_model.dart';
import 'package:teste_arch_get/app/features/products/state/products_state.dart';
import 'package:teste_arch_get/app/features/products/view/details_product_page.dart';

class ProductsController extends GetxController {
  final ProductsFunctions productsFunctions;

  // Instância do estado
  final ProductsState state = ProductsState.init();

  ProductsController(this.productsFunctions);

  Future<void> getProductsController() async {
    // Chama a função para buscar produtos
    final products = await productsFunctions.getProducts(
      iGetProductsUecase: Get.find<IGetProductsUsecase>(),
    );
    // Atualiza o estado com a lista de produtos obtida
    state.listProducts.addAll(products);
  }

// metodo para setar produto selecionado
  void selectProduct(ProductModel product) {
    final itemSelected = productsFunctions.selectProduct(product);
    state.productSelected = itemSelected.obs;
    Get.to(DetailsProductPage(product: product));
  }
}
