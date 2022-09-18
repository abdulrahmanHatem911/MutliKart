import 'package:flutter/material.dart';
import 'package:multikart_app/modules/components/categories/categories_details.dart';
import 'package:multikart_app/shared/context/contant.dart';
import 'package:multikart_app/shared/dummy/categories_dummy.dart';
import 'package:multikart_app/shared/style/app%20color/light_app_color.dart';

import '../components/categories/category_card.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        itemCount: CategoriesDummy.categories.length,
        itemBuilder: (context, index) {
          final CategoriesDummy model = CategoriesDummy.categories[index];
          return model.right
              ? GestureDetector(
                  onTap: () {
                    navigatorTo(CategoriesDetails(data: model), context);
                  },
                  child: CategoryCard(model: model),
                )
              : GestureDetector(
                  onTap: () {
                    navigatorTo(
                        CategoriesDetails(
                          data: model,
                        ),
                        context);
                  },
                  child: SizedBox(
                    height: height * 0.14,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            width: width,
                            height: height * .11,
                            decoration: BoxDecoration(
                              color: Colors.purple.shade50,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    model.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                          color: AppColorLight.primaryColor,
                                        ),
                                  ),
                                  Text(
                                    model.title,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Colors.grey.shade500,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          child: SizedBox(
                            height: height * 0.14,
                            width: width * 0.3,
                            child: Image(
                              image: AssetImage(model.imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
        },
      ),
    );
  }
}
