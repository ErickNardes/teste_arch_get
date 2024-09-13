import 'dart:convert';

import 'package:teste_arch_get/app/features/products/datasource/i_get_products_datasource.dart';
import 'package:teste_arch_get/app/features/products/domain/helpers/strings/get_products_strings.dart';
import 'package:teste_arch_get/app/features/products/model/mapper/products_mapper.dart';
import 'package:teste_arch_get/app/features/products/model/product_model.dart';
import 'package:http/http.dart' as http;

class GetProductsDatasource implements IGetProductsDatasource {
  @override
  Future<List<ProductModel>> get() async {
    final httpResponse = await http.get(Uri.parse(getProductsString));
    final body = json.decode(httpResponse.body);
    final data = List.from(body['products']);
    return data.map((element) => ProductsMapper.fromJson(element)).toList();
  }
}
