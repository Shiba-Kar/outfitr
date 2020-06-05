import 'package:flutter/material.dart';
import 'package:outfitr/screens/onboardings/Onboarding1.dart';
import 'package:outfitr/screens/onboardings/Onboarding2.dart';
import 'package:outfitr/screens/onboardings/Onboarding3.dart';
import 'package:outfitr/screens/onboardings/Onboarding4.dart';
import 'package:outfitr/screens/onboardings/SplashScreen.dart';

class Onboarding extends StatefulWidget {
  Onboarding({Key key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          SplashScreen(),
          Onboarding1(),
          Onboarding2(),
          Onboarding3(),
          Onboarding4()
        ],
        onPageChanged: (pageIndex) => setState(() {
          _currentPage = pageIndex;
        }),
      ),
    );
  }
}
