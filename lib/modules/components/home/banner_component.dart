import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:multikart_app/shared/dummy/banners_dummy.dart';
import 'package:multikart_app/shared/style/app%20color/light_app_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../models/home/banner_model.dart';
import '../../../shared/context/size.dart';

class BannerComponent extends StatelessWidget {
  final List<BannersData> model;
  const BannerComponent({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * .32,
      child: Stack(
        children: [
          PageView(
            controller: pageController,
            children: model
                .map(
                  (e) => Stack(
                    children: [
                      Container(
                        width: width,
                        height: height * 0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                              image: AssetImage(e.imageUrl), fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        top: 60.0,
                        left: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Welcome To MultiKart',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            Text(
                              'Flat 50\$OFF',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                    color: Colors.red,
                                  ),
                            ),
                            Text(
                              'Free Shipping Mid Night',
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            AppSize.appV10,
                            Container(
                              width: width * 0.25,
                              height: height * .05,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.red,
                              ),
                              child: const Center(
                                child: Text(
                                  'SHOP NOW',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
                .toList(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SmoothPageIndicator(
              controller: pageController,
              count: model.length,
              effect: const ExpandingDotsEffect(
                expansionFactor: 5,
                dotWidth: 10,
                dotHeight: 5,
                activeDotColor: AppColorLight.primaryColor,
              ),
              onDotClicked: (index) {
                pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
