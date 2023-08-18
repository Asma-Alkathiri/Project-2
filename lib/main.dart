import 'package:flutter/material.dart';
import 'package:jewelry_store/datasets/store_Data.dart';
import 'package:jewelry_store/models/product_model.dart';
import 'package:jewelry_store/screens/home_screen.dart';

List<ProductModel> productList= [];

void main() {
  for (var element in productsData["products"]) {
    productList.add(ProductModel.fromJson(element));
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: HomeScreen()),
    );
  }
}
