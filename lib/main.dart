import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_store/consts/colors.dart';
import 'package:grocery_store/views/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: secondaryColor));
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(textTheme).copyWith(
          headline4: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          headline5: const TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 20,
            fontWeight: FontWeight.w500,
            height: 1.5,
          ),
          headline6: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          bodyText1: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          bodyText2: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          subtitle1: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
          subtitle2: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
