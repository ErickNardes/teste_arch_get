import 'package:flutter/material.dart';

import 'package:teste_arch_get/app/features/products/model/product_model.dart';

class DetailsProductPage extends StatelessWidget {
  final ProductModel product;
  const DetailsProductPage({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Image.network(product.image),
          Positioned(
            top: 16,
            left: 16,
            child: Text(product.title),
          ),
        ],
      ),
    );
  }
}
