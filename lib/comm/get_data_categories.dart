import 'package:bao_cao/comm/categories_container.dart';
import 'package:flutter/material.dart';

class GetCategories extends StatelessWidget {
  GetCategories({super.key, required this.CategoriesList});
  List CategoriesList;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: CategoriesList.map((e) => Categories(
              image: e.image,
              name: e.name,
            )).toList());
  }
}
