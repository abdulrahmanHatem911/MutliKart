import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multikart_app/modules/screens/auth/registration_screen.dart';

import '../../../layout/screens/layout_screen.dart';
import '../../../shared/context/contant.dart';
import '../../../shared/context/size.dart';
import '../../../shared/style/icon_broken.dart';
import '../../components/auth/buttom_component.dart';
import '../../components/auth/text_form_filed_compoentes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                          image: AssetImage('assets/images/auth/3.png'),
                        ),
                      ),
                      AppSize.appV10,
                      Text(
                        'Email',
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
                        title: 'Login',
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
                            'Don\'t have any account.',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                          TextButton(
                            onPressed: () => navigatorTo(
                                const RegistrationScreen(), context),
                            child: Text(
                              'Register',
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
