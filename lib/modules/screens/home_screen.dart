import 'package:flutter/material.dart';
import 'package:multikart_app/modules/components/home/appbar.dart';
import 'package:multikart_app/modules/components/home/banner_component.dart';
import 'package:multikart_app/modules/components/home/brand.dart';
import 'package:multikart_app/modules/components/home/kids_component.dart';
import 'package:multikart_app/shared/context/size.dart';
import 'package:multikart_app/shared/dummy/banners_dummy.dart';
import 'package:multikart_app/shared/dummy/deals_of_day.dart';
import 'package:multikart_app/shared/dummy/story_dummy.dart';

import '../../models/home/banner_model.dart';
import '../../shared/style/app color/Light_app_color.dart';
import '../components/home/deal_Component.dart';
import '../components/home/story_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppBarComponent(),
            AppSize.appV10,
            SizedBox(
              width: width,
              height: height * .12,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return StoryComponent(
                    model: StoryDummy.storyDummy[index],
                  );
                },
                separatorBuilder: (context, index) => AppSize.appH30,
                itemCount: StoryDummy.storyDummy.length,
              ),
            ),
            AppSize.appV10,
            BannerComponent(model: BannersData.banners),
            Row(
              children: [
                Text(
                  'Deals of the day',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View All',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: AppColorLight.primaryColor,
                        ),
                  ),
                )
              ],
            ),
            AppSize.appV20,
            SizedBox(
              height: height * .5,
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return DealComponent(
                    model: DealsOfDay.dealDummy[index],
                  );
                },
                separatorBuilder: (context, index) => AppSize.appV20,
                itemCount: DealsOfDay.dealDummy.length,
              ),
            ),
            AppSize.appV20,
            Row(
              children: [
                Text(
                  'The Kids Corner',
                  style: Theme.of(context).textTheme.headline1,
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View All',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: AppColorLight.primaryColor,
                        ),
                  ),
                ),
              ],
            ),
            const KidsComponent(),
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
}
