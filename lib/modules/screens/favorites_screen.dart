import 'package:flutter/material.dart';
import 'package:multikart_app/modules/components/home/deal_Component.dart';
import 'package:multikart_app/shared/context/size.dart';
import 'package:multikart_app/shared/dummy/deals_of_day.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        itemBuilder: (context, index) {
          final DealsOfDay data = DealsOfDay.dealDummy[index];
          return _buildItemList(context, data);
        },
        separatorBuilder: (context, index) => AppSize.appV10,
        itemCount: DealsOfDay.dealDummy.length,
      ),
    );
  }

  Widget _buildItemList(BuildContext context, DealsOfDay model) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120.0,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 5.0,
            ),
            width: 120.0,
            height: 120.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              image: DecorationImage(
                image: AssetImage(model.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          AppSize.appH10,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              AppSize.appV5,
              Text(
                'by ' + model.brand,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Row(
                children: [
                  Text(
                    model.price,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  AppSize.appH5,
                  Text(
                    model.discount,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
