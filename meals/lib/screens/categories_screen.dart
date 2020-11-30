import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import '../components/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        // backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('Vamos Cozinhar?'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,
          childAspectRatio: 3 / 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES.map((cat) {
          return CategoryItem(cat);
        }).toList(),
      ),
    );
  }
}
