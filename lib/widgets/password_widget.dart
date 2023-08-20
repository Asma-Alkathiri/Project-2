import 'package:flutter/material.dart';
import 'package:jewelry_store/ui_class/colors.dart';
import 'package:jewelry_store/utils/size.dart';

class PasswordWidget extends StatefulWidget {
  const PasswordWidget({super.key, required this.scureText});
  final bool scureText;

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: SizedBox(
        width: context.getWidth(),
        child: TextField(
          obscureText: widget.scureText,
          //onSubmitted: onSubmitted,
          //controller: textController,
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: const TextStyle(
                color: primeryColor, fontWeight: FontWeight.bold, fontSize: 14),
            prefixIcon: const Icon(Icons.lock_open),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  widget.scureText != widget.scureText;
                });
              },
              icon: widget.scureText
                  ? const Icon(Icons.visibility_off)
                  : const Icon(Icons.remove_red_eye),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(width: 2, color: primeryColor),
            ),
            filled: true,
            fillColor: p2Color,
            label: const Text("Password"),
          ),
        ),
      ),
    );
  }
}
