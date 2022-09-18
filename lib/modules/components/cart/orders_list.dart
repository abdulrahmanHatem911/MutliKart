import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:multikart_app/shared/dummy/deals_of_day.dart';

import '../../../shared/context/size.dart';

class OrderListComponent extends StatelessWidget {
  const OrderListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: DealsOfDay.dealDummy.length,
      separatorBuilder: (context, index) => Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        width: width,
        height: 10.0,
        color: Colors.grey.shade200,
      ),
      itemBuilder: (context, index) {
        final DealsOfDay model = DealsOfDay.dealDummy[index];
        return Container(
          width: MediaQuery.of(context).size.width,
          // height: 120.0,
          decoration: BoxDecoration(
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
              Expanded(
                child: Column(
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
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    decoration: TextDecoration.lineThrough,
                                  ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade200,
                              minimumSize: const Size(60, 25)),
                          onPressed: () {},
                          child: const Text(
                            'Qty : 1',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        AppSize.appH10,
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade200,
                              minimumSize: const Size(60, 25)),
                          onPressed: () {},
                          child: const Text(
                            'Size :s',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
