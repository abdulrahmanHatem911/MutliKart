import 'package:flutter/material.dart';
import 'package:multikart_app/layout/cubit/app_cubit.dart';
import 'package:multikart_app/modules/screens/search_screen.dart';
import 'package:multikart_app/shared/context/contant.dart';

import '../../../layout/components/drawer.dart';
import '../../../shared/style/icon_broken.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  AppCubit.get(context).scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
              const Text(
                'MultiKart',
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
      Expanded(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  navigatorTo(SearchScreen(), context);
                },
                icon: const Icon(
                  IconBroken.Search,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  IconBroken.Notification,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
