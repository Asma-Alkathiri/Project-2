import 'package:flutter/material.dart';
import 'package:jewelry_store/models/product_model.dart';
import 'package:jewelry_store/ui_class/colors.dart';
import 'package:jewelry_store/utils/size.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        height: 110,
        width: context.getWidth(),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: whiteColor,
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 15),
                blurRadius: 20,
                color: Colors.black12,
              ),
            ]),
        child: Row(children: [
          Image.asset(
            product.image!,
            width: 95,
            height: 95,
          )
        ]),
      ),
    );
  }
}
