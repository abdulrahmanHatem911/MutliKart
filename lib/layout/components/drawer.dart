import 'package:flutter/material.dart';
import 'package:multikart_app/layout/cubit/app_cubit.dart';
import 'package:multikart_app/shared/context/contant.dart';

import '../../shared/context/size.dart';
import '../../shared/style/icon_broken.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: InkWell(
              onTap: () {
                AppCubit.get(context).changeCurrentIndex(4);
                navigatorPop(context);
              },
              child: Row(
                children: [
                  const Image(
                    image: AssetImage('assets/images/user/3.png'),
                    width: 60.0,
                    height: 60.0,
                  ),
                  AppSize.appH10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Paige Turner',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        'paigeturner@gmail.com',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          _buildListItem(
            context,
            title: 'Dark Mood',
            leadingIcon: IconBroken.Setting,
          ),
          _buildListItem(
            context,
            title: 'RTL',
            leadingIcon: IconBroken.Setting,
          ),
          _buildListItem(
            context,
            title: 'Pages',
            leadingIcon: IconBroken.Paper,
            subtitle: 'ongoing Orders, Recent Orders..',
          ),
          _buildListItem(
            context,
            title: 'Orders',
            leadingIcon: IconBroken.Paper_Fail,
            subtitle: 'ongoing Orders, Recent Orders..',
            onTapFunction: () {
              AppCubit.get(context).changeCurrentIndex(2);
              navigatorPop(context);
            },
          ),
          _buildListItem(
            context,
            title: 'Your WishList',
            leadingIcon: IconBroken.Heart,
            subtitle: 'your save products',
            onTapFunction: () {
              AppCubit.get(context).changeCurrentIndex(3);
              navigatorPop(context);
            },
          ),
          _buildListItem(
            context,
            title: 'Payment',
            leadingIcon: IconBroken.Buy,
            subtitle: 'save cart wallet',
            onTapFunction: () {
              AppCubit.get(context).changeCurrentIndex(2);
            },
          ),
          _buildListItem(
            context,
            title: 'Save address',
            leadingIcon: IconBroken.Location,
            subtitle: 'Home Office',
          ),
          _buildListItem(
            context,
            title: 'Langage',
            leadingIcon: IconBroken.User,
            subtitle: 'Select your langage her',
          ),
          _buildListItem(
            context,
            title: 'Notification',
            leadingIcon: IconBroken.Notification,
            subtitle: 'offers Order Tracking message',
          ),
          _buildListItem(
            context,
            title: 'Notification',
            leadingIcon: IconBroken.Setting,
            subtitle: 'Dark Mood RTL, Notification ',
          ),
          _buildListItem(
            context,
            title: 'Profile Setting',
            leadingIcon: IconBroken.User1,
            subtitle: 'Full Name',
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(
    BuildContext context, {
    required String title,
    required IconData leadingIcon,
    IconData? tailIcon,
    String? subtitle,
    Function()? onTapFunction,
  }) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTapFunction,
          child: ListTile(
            leading: Icon(leadingIcon),
            title: Text(
              title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            subtitle: Text(
              subtitle ?? '',
              style: TextStyle(fontSize: 14.0),
            ),
            trailing: Icon(
              tailIcon,
              size: 18.0,
            ),
          ),
        ),
        Divider(
          endIndent: 20.0,
          indent: 20.0,
          color: Colors.grey.shade500,
        )
      ],
    );
  }
}
