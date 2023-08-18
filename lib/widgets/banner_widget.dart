import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:jewelry_store/ui_class/colors.dart';
import 'package:jewelry_store/utils/size.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      height: 165,
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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: AnotherCarousel(
          images: const [
            AssetImage("assets/images/B1.jpeg"),
            AssetImage("assets/images/B2.jpeg"),
            AssetImage("assets/images/B3.jpeg"),
            AssetImage("assets/images/B4.jpeg"),
            AssetImage("assets/images/B5.jpeg"),
          ],
          indicatorBgPadding: 1,
          showIndicator: false,
          boxFit: BoxFit.fill,
          animationDuration: const Duration(milliseconds: 1000),
        ),
      ),
    );
  }
}
