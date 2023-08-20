import 'package:flutter/material.dart';
import 'package:jewelry_store/models/product_model.dart';
import 'package:jewelry_store/ui_class/colors.dart';
import 'package:jewelry_store/utils/nav.dart';
import 'package:jewelry_store/widgets/details_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product, });
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: primeryColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: IconButton(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          icon: const Icon(
            Icons.arrow_back,
            color: primeryColor,
          ),
          onPressed: () => context.pop(),
        ),
      ),
      
      body: DetailsWidget(
        product: product,
      ),
    );
  }
}
