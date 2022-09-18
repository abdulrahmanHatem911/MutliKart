import 'package:flutter/material.dart';
import 'package:multikart_app/modules/components/auth/buttom_component.dart';
import 'package:multikart_app/modules/screens/auth/login_screen.dart';
import 'package:multikart_app/modules/screens/auth/registration_screen.dart';
import 'package:multikart_app/shared/context/contant.dart';
import 'package:multikart_app/shared/context/size.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Image(
              image: AssetImage('assets/images/auth/1.png'),
            ),
            Column(
              children: [
                AuthBuildButtom(
                  title: 'Login',
                  onTapFunction: () => navigatorFinish(
                    context,
                    const LoginScreen(),
                  ),
                ),
                AppSize.appV20,
                AuthBuildButtom(
                  title: 'Registration',
                  onTapFunction: () => navigatorFinish(
                    context,
                    const RegistrationScreen(),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
