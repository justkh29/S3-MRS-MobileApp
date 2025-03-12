import 'package:flutter/material.dart';
//import 'package:flutter_application_1/common/widgets/appbar/app_bar.dart';
import 'package:flutter_application_1/common/widgets/buttons/basic_app_button.dart';
//import 'package:flutter_application_1/core/configs/assets/app_images.dart';
import 'package:flutter_application_1/core/configs/assets/app_vectors.dart';
import 'package:flutter_application_1/presentation/auth/pages/signup.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_application_1/core/configs/theme/app_colors.dart';
import 'package:flutter_application_1/presentation/auth/pages/signin.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //const BasicAppBar(),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 120, horizontal: 90),
                  child: Align(alignment: Alignment.topCenter, child: SvgPicture.asset(AppVectors.account)),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: BasicAppButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SignupPage()),
                            );
                          },
                          title: 'Register'),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      flex: 1,
                      child: BasicAppButton(
                          backgroundColor: AppColors.primary,
                          foregroundColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SigninPage()),
                            );
                          },
                          title: 'Sign in'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
