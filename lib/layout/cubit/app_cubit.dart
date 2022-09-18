import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:multikart_app/modules/screens/cart_screen.dart';
import 'package:multikart_app/modules/screens/categories_screen.dart';
import 'package:multikart_app/modules/screens/favorites_screen.dart';
import 'package:multikart_app/modules/screens/home_screen.dart';
import 'package:multikart_app/modules/screens/profile_screen.dart';
import 'package:multikart_app/shared/network/remot/end_point.dart';

import '../../models/home/banner_model.dart';
import '../../shared/network/remot/dio.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const CategoriesScreen(),
    const CartScreen(),
    const FavoritesScreen(),
    const ProfileScreen(),
  ];
  void changeCurrentIndex(int index) {
    currentIndex = index;
    emit(AppChangeCurrentIndexState());
  }

  List<BannersModel> banners = [];
  void getBanner() {
    emit(AppGetBannerLoadingState());
    DioHelper.getData(
      url: ApiContext.banner,
    ).then((value) {
      banners = List<BannersModel>.from(
        (value.data['data'] as List).map(
          (e) => BannersModel.fromJson(e),
        ),
      );
      emit(AppGetBannerSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(AppGetBannerErrorState(error.toString()));
    });
  }
}
