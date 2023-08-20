import 'package:flutter/material.dart';
import 'package:jewelry_store/main.dart';
import 'package:jewelry_store/screens/cart_screen.dart';
import 'package:jewelry_store/screens/login_screen.dart';
import 'package:jewelry_store/utils/nav.dart';
import 'package:jewelry_store/widgets/banner_widget.dart';
import 'package:jewelry_store/widgets/bg_container.dart';
import 'package:jewelry_store/ui_class/colors.dart';
import 'package:jewelry_store/widgets/product_card.dart';
import 'package:jewelry_store/widgets/search_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primeryColor,
      appBar: AppBar(
        backgroundColor: primeryColor,
        elevation: 0,
        title: const Text(
          "FJ Jewelry",
          style: TextStyle(
              fontSize: 26, color: whiteColor, fontWeight: FontWeight.w200),
        ),
        actions: [
          const SearchWidget(),
          IconButton(
              icon: const Icon(
                Icons.person_sharp,
                color: whiteColor,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      context.push(path: const CartScreen()))).then((value) => {
                if (value == '') {setState(() {})}
              });
        },
        backgroundColor: primeryColor,
        foregroundColor: whiteColor,
        elevation: 0,
        child: const Icon(Icons.shopping_cart),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          const Expanded(
            child: Stack(
              children: [
                BGContainer(),
                BannerWidget(),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: whiteColor,
              ),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onLongPress: () {},
                      child: ProductCard(
                        product: productList[index],
                      ),
                    );
                  }),
            ),
          ),
        ]),
      ),
    );
  }
}
