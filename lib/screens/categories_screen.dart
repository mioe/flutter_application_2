import 'package:flutter/cupertino.dart';
import 'package:flutter_application_2/dummy_data.dart';
import 'package:flutter_application_2/widgets/categories_item.dart';

class CategoryScreen extends StatelessWidget {
  static const routeName = '/';

  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Flutter application 2'),
      ),
      child: SafeArea(
        child: GridView(
          padding: const EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: [
            ...DUMMY_CATEGORIES
                .map((catData) => CategoryItem(
                      catData.id,
                      catData.title,
                      catData.color,
                    ))
                .toList(),
          ],
        ),
      ),
    );
  }
}
