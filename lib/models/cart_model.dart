
import 'package:jewelry_store/main.dart';
import 'package:jewelry_store/models/product_model.dart';

class CartItem {
  int quantity;
  ProductModel product;

  CartItem({
    required this.quantity,
    required this.product,
  });
}

List<CartItem> cartItems = [
  CartItem(quantity: 2, product: productList[0]),
  CartItem(quantity: 1, product: productList[1]),
];