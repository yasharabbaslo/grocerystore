import 'package:flutter/material.dart';
import 'package:grocery_store/consts/colors.dart';
import 'package:grocery_store/views/onboarding/onboarding1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((value) =>
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const OnBoarding1())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: const [
                Icon(
                  Icons.messenger_rounded,
                  size: 140,
                  color: primaryColor,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    'T',
                    style: TextStyle(color: secondaryColor, fontSize: 80),
                  ),
                )
              ],
            ),
            const Text(
              'Tradly',
              style: TextStyle(color: primaryColor, fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
