import 'package:flutter/material.dart';
import 'package:meals/components/category_item.dart';
import 'screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.white,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontSize: 25,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      home: CategoriesScreen(),
      routes: {
        // AppRoutes.HOME: (ctx) => CategoriesScreen(), //ñ funciona
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
      },
    );
  }
}
