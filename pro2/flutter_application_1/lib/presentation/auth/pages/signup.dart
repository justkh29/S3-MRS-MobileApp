import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/widgets/appbar/app_bar.dart';
import 'package:flutter_application_1/common/widgets/buttons/basic_app_button.dart';
import 'package:flutter_application_1/core/configs/assets/app_images.dart';
import 'package:flutter_application_1/presentation/auth/pages/signin.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _SiginText(context),
      appBar: BasicAppBar(
        title: Image.asset(
          AppImages.logo_start,
          height: 40,
          width: 40,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            const SizedBox(
              height: 40,
            ),
            _fullNamefeild(context),
            const SizedBox(
              height: 20,
            ),
            _emailFeild(context),
            const SizedBox(
              height: 20,
            ),
            _PassFeild(context),
            const SizedBox(
              height: 30,
            ),
            BasicAppButton(
              onPressed: () {},
              title: 'Create Account',
            )
          ],
        ),
      ),
    );
  }

  Widget _registerText() {
    return const Text(
      'Register',
      style: TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _fullNamefeild(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Full Name',
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme,
      ),
    );
  }

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

  Widget _SiginText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          'Bạn đã có tài khoản ?',
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
                MaterialPageRoute(builder: (context) => const SigninPage()),
              );
            },
            child: const Text(
              'Sign in',
              style: TextStyle(
                color: Colors.blue,
              ),
            )),
      ]),
    );
  }
}
