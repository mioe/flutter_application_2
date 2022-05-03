import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'] as String;
    final categoryId = routeArgs['id'] as String;
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(categoryTitle),
      ),
      child: SafeArea(
        child: Center(
          child: Text(
            categoryId,
            style: const TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }
}
