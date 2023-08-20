import 'package:flutter/material.dart';
import 'package:jewelry_store/models/cart_model.dart';
import 'package:jewelry_store/models/product_model.dart';
import 'package:jewelry_store/screens/cart_screen.dart';
import 'package:jewelry_store/ui_class/colors.dart';
import 'package:jewelry_store/ui_class/spaces.dart';
import 'package:jewelry_store/utils/nav.dart';
import 'package:jewelry_store/widgets/buttom_widget.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          decoration: const BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 40),
                height: size.width * 0.8,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Container(
                    height: size.width * 0.7,
                    width: size.width * 0.7,
                    decoration: const BoxDecoration(),
                    child: Image.asset(
                      product.image!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  product.title!,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text(
                "Price: ${product.price!} SR",
                style: const TextStyle(
                  fontSize: 28,
                  color: primeryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spaces.spacesH16,
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  product.subTitle!,
                  style: const TextStyle(color: blackColor, fontSize: 24),
                ),
              ),
            ],
          ),
        ),
        Spaces.spacesH32,
        IconButton(
          onPressed: () {
            final object = ProductModel(
                id: product.id,
                title: product.title,
                subTitle: product.subTitle,
                price: product.price,
                image: product.image,
                quantity: 1);
            cartItems.add(object as CartItem);
          },
          icon: const Icon(
            Icons.shopping_cart,
            size: 40,
            color: p2Color,
          ),
        )
      ],
    );
  }
}
