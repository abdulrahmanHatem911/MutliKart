import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multikart_app/layout/cubit/app_cubit.dart';
import 'package:multikart_app/layout/screens/layout_screen.dart';
import 'package:multikart_app/modules/screens/auth/auth_screen.dart';
import 'package:multikart_app/modules/screens/auth/login_screen.dart';
import 'package:multikart_app/modules/screens/auth/registration_screen.dart';
import 'package:multikart_app/shared/network/remot/dio.dart';
import 'package:multikart_app/shared/style/theme/light_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..getBanner(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppLightTheme.lightTheme,
          home: const AuthScreen()),
    );
  }
}
