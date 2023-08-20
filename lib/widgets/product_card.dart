import 'package:flutter/material.dart';
import 'package:jewelry_store/models/cart_model.dart';
import 'package:jewelry_store/models/product_model.dart';
import 'package:jewelry_store/screens/cart_screen.dart';
import 'package:jewelry_store/screens/details_screen.dart';
import 'package:jewelry_store/ui_class/colors.dart';
import 'package:jewelry_store/utils/size.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
    required this.product,
  });
  final ProductModel product;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsScreen(
                    product: widget.product,
                  ))),
      child: Shimmer(
        enabled: true,
        color: const Color.fromARGB(137, 131, 119, 119),
        child: Container(
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
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
              height: 110,
              width: 110,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  widget.product.image!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.product.title!,
                    style: const TextStyle(color: blackColor, fontSize: 20),
                  ),
                  Text(
                    "${widget.product.price} SR",
                    style: const TextStyle(color: primeryColor, fontSize: 19),
                  ),
                ],
              ),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(
                Icons.add_shopping_cart,
                color: primeryColor,
              ),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => CartScreen(cartListModel: cartModel),
                //   ),
                // );
              },
            ),
          ]),
        ),
      ),
    );
  }
}
