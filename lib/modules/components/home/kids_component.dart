import 'package:flutter/material.dart';
import 'package:multikart_app/shared/dummy/deals_of_day.dart';

import '../../../shared/context/size.dart';
import '../../../shared/style/app color/Light_app_color.dart';
import '../../../shared/style/icon_broken.dart';

class KidsComponent extends StatelessWidget {
  const KidsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * .35,
      width: width,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final model = DealsOfDay.dealDummy[index];
          return SizedBox(
            width: width * .34,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 160.0,
                      height: 170.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        image: DecorationImage(
                          image: AssetImage(model.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10.0,
                      right: 10.0,
                      child: Container(
                        width: 30.0,
                        height: 30.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Center(
                          child: Icon(
                            IconBroken.Heart,
                            color: Colors.grey,
                            size: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                AppSize.appV5,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.star,
                      color: AppColorLight.appColorYellow,
                      size: 20.0,
                    ),
                    AppSize.appH5,
                    Icon(
                      Icons.star,
                      color: AppColorLight.appColorYellow,
                      size: 20.0,
                    ),
                    AppSize.appH5,
                    Icon(
                      Icons.star,
                      color: AppColorLight.appColorYellow,
                      size: 20.0,
                    ),
                  ],
                ),

                //name of product
                Expanded(
                  child: Text(
                    model.title,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),

                //price of product
                Text(
                  model.price,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: AppColorLight.primaryColor,
                      ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => AppSize.appH10,
        itemCount: DealsOfDay.dealDummy.length,
      ),
    );
  }
}
