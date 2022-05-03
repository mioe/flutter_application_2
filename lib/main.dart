import 'package:flutter/cupertino.dart';

import 'package:flutter_application_2/screens/categories_screen.dart';
import 'package:flutter_application_2/screens/category_meals_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter application 2',
      // home: const CategoryScreen(),
      initialRoute: CategoryScreen.routeName,
      routes: {
        CategoryScreen.routeName: (ctx) => const CategoryScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
      },
    );
  }
}
