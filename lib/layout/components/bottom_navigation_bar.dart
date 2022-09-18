import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multikart_app/layout/cubit/app_cubit.dart';
import 'package:multikart_app/shared/style/icon_broken.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return BottomNavigationBar(
          currentIndex: cubit.currentIndex,
          onTap: (index) {
            cubit.changeCurrentIndex(index);
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(IconBroken.Home),
            ),
            BottomNavigationBarItem(
              label: 'Categories',
              icon: Icon(IconBroken.Category),
            ),
            BottomNavigationBarItem(
              label: 'Cart',
              icon: Icon(IconBroken.Buy),
            ),
            BottomNavigationBarItem(
              label: 'Favorites',
              icon: Icon(IconBroken.Heart),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(IconBroken.Profile),
            ),
          ],
        );
      },
    );
  }
}
