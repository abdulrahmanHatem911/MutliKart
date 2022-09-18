part of 'app_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class AppChangeCurrentIndexState extends AppState {}

class AppGetBannerLoadingState extends AppState {}

class AppGetBannerSuccessState extends AppState {}

class AppGetBannerErrorState extends AppState {
  final String error;
  AppGetBannerErrorState(this.error);
}
