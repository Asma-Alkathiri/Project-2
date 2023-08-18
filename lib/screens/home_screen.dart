import 'package:flutter/material.dart';
import 'package:jewelry_store/main.dart';
import 'package:jewelry_store/widgets/banner_widget.dart';
import 'package:jewelry_store/widgets/bg_container.dart';
import 'package:jewelry_store/widgets/home-appbar.dart';
import 'package:jewelry_store/ui_class/colors.dart';
import 'package:jewelry_store/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primeryColor,
      appBar: homeAppBar(),
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
          Center(
            child: ListView.builder(
              itemCount: productList.length,
              itemBuilder: (context, index) {
                return ProductCard(product: productList[index]);
              },
            ),
          ),
        ]),
      ),
    );
  }
}
