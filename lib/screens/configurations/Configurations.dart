import 'package:flutter/material.dart';
import 'package:outfitr/screens/configurations/ConfigurationBarands.dart';
import 'package:outfitr/screens/configurations/ConfigurationColors.dart';
import 'package:outfitr/screens/configurations/ConfigurationPatterns.dart';


class Configurations extends StatefulWidget {
  Configurations({Key key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Configurations> {
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
        ConfigurationColor(),
        ConfigurationBrands(),
        ConfigurationPatterns()
      
        ],
        onPageChanged: (pageIndex) => setState(() {
          _currentPage = pageIndex;
        }),
      ),
    );
  }
}
