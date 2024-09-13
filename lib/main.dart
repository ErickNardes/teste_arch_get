import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:teste_arch_get/app/features/products/product_binding.dart';
import 'package:teste_arch_get/app/features/products/view/product_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    initialBinding: ProductBinding(),
    home: const ProductPage(),
  ));
}
