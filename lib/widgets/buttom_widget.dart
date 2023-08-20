import 'package:flutter/material.dart';
import 'package:jewelry_store/ui_class/colors.dart';

class ButtomWidget extends StatelessWidget {
  const ButtomWidget({super.key, required this.onPressed, required this.text});
final Function()? onPressed;
final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black12,
                    fixedSize: const Size(380, 50),
                    shadowColor: blackColor),
                onPressed: onPressed,
                child:  Text(
                  text,
                  style: const TextStyle(
                      color: whiteColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              );
  }
}