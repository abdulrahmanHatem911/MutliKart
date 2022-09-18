import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multikart_app/layout/components/bottom_navigation_bar.dart';
import 'package:multikart_app/layout/components/drawer.dart';
import 'package:multikart_app/layout/cubit/app_cubit.dart';
import 'package:multikart_app/shared/style/icon_broken.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Scaffold(
          key: cubit.scaffoldKey,
          body: SafeArea(
            child: cubit.screens[cubit.currentIndex],
          ),
          drawer: const DrawerScreen(),
          bottomNavigationBar: const BottomNavigationScreen(),
        );
      },
    );
  }
}
