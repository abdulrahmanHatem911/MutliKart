import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multikart_app/layout/screens/layout_screen.dart';
import 'package:multikart_app/modules/components/auth/text_form_filed_compoentes.dart';
import 'package:multikart_app/modules/screens/auth/login_screen.dart';
import 'package:multikart_app/shared/context/contant.dart';
import 'package:multikart_app/shared/context/size.dart';
import 'package:multikart_app/shared/style/icon_broken.dart';

import '../../components/auth/buttom_component.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffff725e),
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Positioned(
              top: 70.0,
              bottom: 0.0,
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                width: width,
                height: height,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30.0)),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20.0),
                  ),
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      SizedBox(
                        width: width,
                        height: height * .35,
                        child: const Image(
                          image: AssetImage('assets/images/auth/2.png'),
                        ),
                      ),
                      AppSize.appV10,
                      Text(
                        'User name',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      AppSize.appV5,
                      AuthTextFormFiled(
                        textInputType: TextInputType.text,
                        hintTilte: 'Enter your name',
                        prefixIcon: IconBroken.Profile,
                      ),
                      AppSize.appV10,
                      Text(
                        'Emial',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      AppSize.appV5,
                      AuthTextFormFiled(
                        textInputType: TextInputType.text,
                        hintTilte: 'Enter your email',
                        prefixIcon: IconBroken.Message,
                      ),
                      AppSize.appV10,
                      Text(
                        'Password',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      AppSize.appV5,
                      AuthTextFormFiled(
                        textInputType: TextInputType.text,
                        hintTilte: 'Enter your password',
                        prefixIcon: IconBroken.Lock,
                      ),
                      AppSize.appV20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'i agree with Terms and Privacy',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      AppSize.appV20,
                      AuthBuildButtom(
                        title: 'Sign up',
                        onTapFunction: () =>
                            navigatorFinish(context, const LayoutScreen()),
                      ),
                      AppSize.appV10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const SizedBox(
                              width: 30.0,
                              height: 30.0,
                              child: Image(
                                image: AssetImage(
                                    'assets/images/social/google.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          AppSize.appH10,
                          GestureDetector(
                            onTap: () {},
                            child: const SizedBox(
                              width: 30.0,
                              height: 30.0,
                              child: Image(
                                image:
                                    AssetImage('assets/images/social/fb.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            'Already have an account.',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                          TextButton(
                            onPressed: () =>
                                navigatorTo(const LoginScreen(), context),
                            child: Text(
                              'Login',
                              style: GoogleFonts.prociono(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
