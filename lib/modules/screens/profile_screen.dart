import 'package:flutter/material.dart';
import 'package:multikart_app/layout/cubit/app_cubit.dart';
import 'package:multikart_app/shared/context/size.dart';
import 'package:multikart_app/shared/style/app%20color/light_app_color.dart';
import 'package:multikart_app/shared/style/icon_broken.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      child: Column(
        children: [
          Container(
            width: width,
            height: height * 0.2,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                const Image(
                  image: AssetImage('assets/images/user/3.png'),
                  width: 90.0,
                  height: 90.0,
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
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColorLight.primaryColor,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Edit',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          AppSize.appV20,
          Container(
            //color: Colors.purple.shade50,
            height: height * 1.25,
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
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
                  },
                ),
                _buildListItem(
                  context,
                  title: 'Your WishList',
                  leadingIcon: IconBroken.Heart,
                  subtitle: 'your save products',
                  onTapFunction: () {
                    AppCubit.get(context).changeCurrentIndex(3);
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
          ),
          AppSize.appV30,
          GestureDetector(
            onTap: () {
              AppCubit.get(context).changeCurrentIndex(0);
            },
            child: Container(
              width: width,
              height: height * 0.07,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade500,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Center(
                  child: Text(
                'LOG OUT',
                style: Theme.of(context).textTheme.bodyText1,
              )),
            ),
          ),
        ],
      ),
    ));
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
            subtitle: Text(subtitle ?? ''),
            trailing: Icon(tailIcon),
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
