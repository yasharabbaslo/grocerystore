import 'package:flutter/material.dart';
import 'package:grocery_store/consts/buttons.dart';
import 'package:grocery_store/consts/colors.dart';
import 'package:grocery_store/data/data.dart';
import 'package:grocery_store/views/auth/login.dart';
import 'package:grocery_store/views/splashscreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  PageController _pageController = PageController();
  final onBoardingItems = AppData.onBoardingItems;
  int _page = 0;

  @override
  void initState() {
    _pageController.addListener(() {
      if (_pageController.page!.round() != _page) {
        setState(() {
          _page = _pageController.page!.round();
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                color: secondaryColor,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                color: primaryColor,
              ),
            ],
          ),
          Positioned(
            left: 32,
            right: 32,
            top: MediaQuery.of(context).size.height / 3 -
                MediaQuery.of(context).viewPadding.top,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                child: Column(
                  children: [
                    Expanded(
                      child: PageView.builder(
                        controller: _pageController,
                        itemCount: onBoardingItems.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Image.asset(
                                'assets/img/onboarding/${onBoardingItems[index].imageFileName}',
                              ),
                              const SizedBox(height: 40),
                              Expanded(
                                child: Text(
                                  onBoardingItems[index].title,
                                  textAlign: TextAlign.center,
                                  style: themeData.textTheme.headline5!
                                      .copyWith(color: secondaryColor),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: onBoardingItems.length,
                      effect: ScrollingDotsEffect(
                          dotWidth: 12,
                          dotHeight: 12,
                          dotColor: secondaryColor.withOpacity(0.6),
                          activeDotColor: secondaryColor,
                          activeDotScale: 1,
                          spacing: 10),
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: OnPrimaryButton(
                        text: (_page == onBoardingItems.length - 1)
                            ? 'Finish'
                            : 'Next',
                        onPressed: () {
                          if (_page == onBoardingItems.length - 1) {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => const LoginView()));
                          } else {
                            _pageController.animateToPage(_page + 1,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.decelerate);
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
