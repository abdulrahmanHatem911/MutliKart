import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:multikart_app/modules/components/categories/category_card.dart';
import 'package:multikart_app/shared/context/size.dart';
import 'package:multikart_app/shared/dummy/categories_dummy.dart';

import '../home/brand.dart';

class CategoriesDetails extends StatelessWidget {
  final CategoriesDummy data;
  const CategoriesDetails({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deatailes'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryCard(model: data),
            AppSize.appV5,
            buildText(),
            AppSize.appV20,
            Row(
              children: [
                builtItem(context, 'assets/images/category/flowerprint.png',
                    'Flowerprint'),
                AppSize.appH10,
                builtItem(context, 'assets/images/category/denim.png', 'Denim'),
                AppSize.appH10,
                builtItem(
                    context, 'assets/images/category/skirts.png', 'Skirts'),
              ],
            ),
            AppSize.appV20,
            Text(
              'Top Brands',
              style: Theme.of(context).textTheme.headline1,
            ),
            AppSize.appV10,
            const BrandComponent(),
            AppSize.appV20,
          ],
        ),
      ),
    );
  }

  Widget builtItem(BuildContext context, String imageUrl, String title) {
    return Expanded(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: Column(
          children: [
            ClipRRect(
              child: Image.asset(imageUrl),
            ),
            AppSize.appV5,
            Text(
              title,
              style:
                  const TextStyle(fontWeight: FontWeight.w300, fontSize: 18.0),
            )
          ],
        ),
      ),
    );
  }

  Widget buildText() {
    return ExpansionTile(
      childrenPadding: const EdgeInsets.only(left: 20.0),
      title: const Text(
        'Fusion Wear',
        style: TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      children: CategoriesDummy.categoriesDetails
          .map(
            (e) => Align(
              alignment: Alignment.topLeft,
              heightFactor: 1.5,
              child: Text(
                e,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
