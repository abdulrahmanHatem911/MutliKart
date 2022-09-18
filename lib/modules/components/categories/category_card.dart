import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:multikart_app/shared/dummy/categories_dummy.dart';

import '../../../shared/style/app color/Light_app_color.dart';

class CategoryCard extends StatelessWidget {
  final CategoriesDummy model;
  const CategoryCard({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.14,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              width: width,
              height: height * .11,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.name,
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            color: AppColorLight.primaryColor,
                          ),
                    ),
                    Text(
                      model.title,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Colors.grey.shade500,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              height: height * 0.14,
              width: width * 0.3,
              child: Image.asset(model.imageUrl),
            ),
          ),
        ],
      ),
    );
  }
}
