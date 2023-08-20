import 'package:flutter/material.dart';
import 'package:jewelry_store/models/product_model.dart';
import 'package:jewelry_store/screens/details_screen.dart';
import 'package:jewelry_store/ui_class/colors.dart';
import 'package:jewelry_store/utils/size.dart';

class CartWidget extends StatelessWidget {
  const CartWidget(
      {super.key,
      required this.product,
      required this.onRemove,
      required this.onAdd});
  final ProductModel product;
  final Function() onRemove;
  final Function() onAdd;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsScreen(
            product: product,
          ),
        ),
      ),
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
                product.image!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              product.title!,
              style: TextStyle(color: blackColor, fontSize: 20),
            ),
            Text(
              "${product.price} SR",
              style: TextStyle(color: blackColor, fontSize: 19),
            ),
            Positioned(
              top: 5,
              right: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: primeryColor,
                      border: Border.all(
                        color: Colors.grey.shade200,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: onRemove,
                          iconSize: 18,
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          product.quantity.toString(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: onAdd,
                          iconSize: 18,
                          icon: const Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
