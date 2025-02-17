import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/appbar/app_bar.dart';
import 'package:flutter_application_1/common/widgets/buttons/basic_app_button.dart';
import 'package:flutter_application_1/core/configs/assets/app_images.dart';
import 'package:flutter_application_1/core/configs/theme/app_colors.dart';
import 'package:flutter_application_1/presentation/auth/pages/signup.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _SignupText(context),
      appBar: BasicAppBar(
        title: Image.asset(
          AppImages.logo_start,
          height: 40,
          width: 40,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _SiginText(),
            const SizedBox(
              height: 40,
            ),
            // _fullNamefeild(context),
            // const SizedBox(
            //   height: 25,
            // ),
            _emailFeild(context),
            const SizedBox(
              height: 20,
            ),
            _PassFeild(context),
            const SizedBox(
              height: 30,
            ),
            BasicAppButton(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
              onPressed: () {},
              title: 'Sign In',
            )
          ],
        ),
      ),
    );
  }

  Widget _SiginText() {
    return const Text(
      'Sign in',
      style: TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  // Widget _fullNamefeild(BuildContext context) {
  //   return TextField(
  //     decoration: const InputDecoration(
  //       hintText: 'Full Name',
  //     ).applyDefaults(
  //       Theme.of(context).inputDecorationTheme,
  //     ),
  //   );
  // }

  Widget _emailFeild(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Email',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }

  Widget _PassFeild(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Password',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }

  Widget _SignupText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          'Bạn chưa có tài khoản ?',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignupPage()),
              );
            },
            child: const Text(
              'Register',
              style: TextStyle(
                color: Colors.blue,
              ),
            )),
      ]),
    );
  }
}
