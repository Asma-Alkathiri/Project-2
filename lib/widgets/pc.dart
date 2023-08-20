// import 'package:flutter/material.dart';
// import 'package:jewelry_store/models/product_model.dart';
// import 'package:jewelry_store/screens/home_screen.dart';
// import 'package:jewelry_store/ui_class/colors.dart';

// class CardWidget extends StatefulWidget {
//   const CardWidget({
//     super.key,
//     required this.product,
//   });

//   final ProductModel product;

//   @override
//   State<CardWidget> createState() => _CardWidgetState();
// }

// class _CardWidgetState extends State<CardWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return
//         // InkWell(
//         //   onTap: () => Navigator.push(
//         //       context,
//         //       MaterialPageRoute(
//         //           builder: (context) => HomeScreen(
//         //                 product: widget.product,
//         //               ))),
//         //   child:
//         SizedBox(
//       height: 100,
//       child: Card(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//         margin: const EdgeInsets.all(8),
//         elevation: 3,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(15),
//                     child: Image.network(
//                       widget.product.image ?? 'assets/images/JF17.jpeg',
//                       height: 70,
//                       width: 70,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       width: 220,
//                       child: Text(
//                         overflow: TextOverflow.fade,
//                         widget.product.title ?? 'earring',
//                         style: const TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.w600),
//                       ),
//                     ),
//                     Text(widget.product.subTitle ??
//                         '925 sterling silver earrin\'),
//                   ],
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.only(right: 24),
//               child: Text(
//                 overflow: TextOverflow.fade,
//                 "${widget.product.price} \$",
//                 style: const TextStyle(
//                     color: primeryColor,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
