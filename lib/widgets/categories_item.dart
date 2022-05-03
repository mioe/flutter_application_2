import 'package:flutter/cupertino.dart';
import 'package:flutter_application_2/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem(this.id, this.title, this.color, {Key? key})
      : super(key: key);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/category-meals', arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => selectCategory(context),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(title),
      ),
    );
  }
}