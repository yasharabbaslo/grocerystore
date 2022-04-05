import 'package:flutter/material.dart';
import 'package:grocery_store/consts/colors.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to tradly',
              style: themeData.textTheme.headline4!
                  .copyWith(color: primaryColor, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 60),
            Text(
              'Login to your account',
              style:
                  themeData.textTheme.bodyText1!.copyWith(color: primaryColor),
            ),
            const SizedBox(height: 45),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    style: themeData.textTheme.headline6!
                        .copyWith(color: primaryColor),
                    decoration: InputDecoration(
                      hintText: 'Email/Mobile Number',
                      hintStyle: themeData.textTheme.bodyText1!.copyWith(
                        color: primaryColor,
                        fontSize: 18,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 13, horizontal: 16),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryColor),
                          borderRadius: BorderRadius.circular(24)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryColor),
                          borderRadius: BorderRadius.circular(24)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryColor),
                          borderRadius: BorderRadius.circular(24)),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    style: themeData.textTheme.headline6!
                        .copyWith(color: primaryColor),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: themeData.textTheme.bodyText1!.copyWith(
                        color: primaryColor,
                        fontSize: 18,
                        letterSpacing: 0.4,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 13, horizontal: 16),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryColor),
                          borderRadius: BorderRadius.circular(24)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryColor),
                          borderRadius: BorderRadius.circular(24)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: primaryColor),
                          borderRadius: BorderRadius.circular(24)),
                    ),
                  ),
                  const SizedBox(height: 38),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24))),
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: themeData.textTheme.bodyText1!
                              .copyWith(color: secondaryColor),
                        )),
                  ),
                  const SizedBox(height: 35),
                  Text(
                    'Forgot your password?',
                    style: themeData.textTheme.headline6!
                        .copyWith(color: primaryColor),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: themeData.textTheme.headline6!
                            .copyWith(color: primaryColor),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Sign up',
                          style: themeData.textTheme.headline6!.copyWith(
                            color: primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
