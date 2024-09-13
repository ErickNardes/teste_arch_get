import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_arch_get/app/features/products/controller/products_controller.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductsController controller = Get.find<ProductsController>();
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.getProductsController();
          },
          child: const Text('Buscar'),
        ),
        body: Obx(
          () => ListView.builder(
              itemCount: controller.state.listProducts.length,
              itemBuilder: (context, index) {
                final product = controller.state.listProducts[index];
                return ListTile(
                  onTap: () {
                    controller.selectProduct(product);
                  },
                  leading: Image.network(product.image),
                  title: Text(product.title),
                );
              }),
        ));
  }
}
