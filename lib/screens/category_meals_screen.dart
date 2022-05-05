import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/dummy_data.dart';
import 'package:flutter_application_2/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  const CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'] as String;
    final categoryId = routeArgs['id'] as String;

    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(categoryTitle),
      ),
      child: SafeArea(
        child: Center(
          child: ListView.builder(
            itemBuilder: (ctx, idx) {
              return MealItem(
                title: categoryMeals[idx].title,
                imageUrl: categoryMeals[idx].imageUrl,
                duration: categoryMeals[idx].duration,
                complexity: categoryMeals[idx].complexity,
                affordability: categoryMeals[idx].affordability,
              );
            },
            itemCount: categoryMeals.length,
          ),
        ),
      ),
    );
  }
}
