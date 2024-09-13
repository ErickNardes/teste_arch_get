import 'package:teste_arch_get/app/features/products/model/product_model.dart';

class ProductsMapper {
  static ProductModel fromJson(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      image: map['thumbnail'],
    );
  }
}
