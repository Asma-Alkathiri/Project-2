import 'package:animation_search_bar/animation_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:jewelry_store/main.dart';
import 'package:jewelry_store/models/product_model.dart';
import 'package:jewelry_store/ui_class/colors.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController textController = TextEditingController();

  List<ProductModel> displayList = List.from(productList);

  void searchList(String value) {
    setState(() {
      displayList = productList
          .where((element) =>
              element.title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimationSearchBar(
      searchBarWidth: 200,
      hintText: "Search..",
      hintStyle: const TextStyle(
          fontWeight: FontWeight.w300, color: Colors.white, fontSize: 20),
      textStyle:
          const TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
      closeIconColor: whiteColor,
      searchIconColor: whiteColor,
      isBackButtonVisible: false,
      centerTitle: '',
      previousScreen: null,
      searchTextEditingController: textController,
      searchFieldDecoration: BoxDecoration(
          color:p2Color,
          border: Border.all(color: Colors.black.withOpacity(.2), width: .5),
          borderRadius: BorderRadius.circular(15)),
      onChanged: (value) => searchList(value),
    );
  }
}
