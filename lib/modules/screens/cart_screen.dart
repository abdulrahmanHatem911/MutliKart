import 'package:flutter/material.dart';
import 'package:multikart_app/shared/context/size.dart';
import 'package:multikart_app/shared/dummy/order_dummy.dart';
import 'package:multikart_app/shared/style/app%20color/light_app_color.dart';
import 'package:multikart_app/shared/style/icon_broken.dart';

import '../components/cart/orders_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const OrderListComponent(),
                  Container(
                    width: width,
                    height: height * 0.15,
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Copons:',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        AppSize.appV5,
                        Container(
                          width: width,
                          height: height * 0.07,
                          padding: const EdgeInsets.only(left: 20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey.shade200,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'ENTER YOUR COPON',
                                      hintStyle: TextStyle(
                                        wordSpacing: 3.0,
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(IconBroken.Arrow___Right_2))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Order Details:',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  AppSize.appV10,
                  ListView.separated(
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    itemBuilder: (context, index) {
                      return builtOrderItem(OrderDummy.orderData[index]);
                    },
                    separatorBuilder: (context, index) => AppSize.appH20,
                    itemCount: OrderDummy.orderData.length,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: width,
            height: height * 0.08,
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
            color: Colors.grey.shade200,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '\$ 27.000',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      AppSize.appV5,
                      Text(
                        'View Deatails',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: Colors.red,
                            ),
                      ),
                    ],
                  ),
                  Container(
                    width: width * 0.5,
                    height: height * 0.1,
                    decoration: BoxDecoration(
                      color: AppColorLight.primaryColor,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                        child: Text(
                      'PLACE ORDER',
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            color: Colors.white,
                          ),
                    )),
                  )
                ]),
          )
        ],
      ),
    );
  }

  Widget builtOrderItem(OrderDummy data) {
    return Row(
      children: [
        Text(
          data.title,
          style: TextStyle(color: Colors.grey.shade600),
        ),
        const Spacer(),
        Text(data.price),
      ],
    );
  }
}
