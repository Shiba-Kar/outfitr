import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outfitr/Iconsiconbag.dart';


import 'package:outfitr/widgets/ButtomCardSwitch.dart';
import 'package:outfitr/widgets/DelayedAnimation.dart';
import 'package:outfitr/Menu.dart';
import 'package:outfitr/widgets/Iconsiconmenu.dart';
import 'package:outfitr/widgets/ItemsCategories.dart';
import 'package:outfitr/widgets/SwipeCards.dart';
import 'package:swipe_stack/swipe_stack.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<SwipeStackState> _swipeKey = GlobalKey<SwipeStackState>();
  GlobalKey<SliderMenuContainerState> _key =
      new GlobalKey<SliderMenuContainerState>();

  @override
  Widget build(BuildContext context) {
    final heigh = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    Widget mainScreen() {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SliderMenuContainer(

          appBarColor: Colors.white,
          trailing: IconButton(
            icon: Iconsiconbag(),
            onPressed: () {},
          ),
          key: _key,
          appBarPadding: const EdgeInsets.only(top: 20),
          sliderMenuOpenOffset: width/1.3,
        
          appBarHeight: 60,
          title: Text(
            'OUTFIT IDEAS',
            style: TextStyle(
              fontFamily: 'SFProDisplay-Semibold',
              fontSize: width / 30,
              color: const Color(0xff0c0d34),
              letterSpacing: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          sliderMenuWidget: Menu(),
          sliderMainWidget: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ItemsCategories(
                      color: Color(0xffFFDDDD),
                      title: "New In",
                    ),
                    ItemsCategories(
                      color: Color(0xffBEECC4),
                      title: "Summer",
                    ),
                    ItemsCategories(
                      color: Color(0xffBFEAF5),
                      title: "Archivewear",
                    ),
                    ItemsCategories(
                      color: Color(0xffF1E0FF),
                      title: "Outlet",
                    ),
                    ItemsCategories(
                      color: Color(0xffFFE8E9),
                      title: "Accessories",
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -width / 5,
                left: 0.0,
                child: Container(
                  //color: Colors.red,
                  height: heigh / 1.3,
                  width: width,
                  child: SvgPicture.asset(
                    'assets/svg/home_bg.svg',
                    fit: BoxFit.contain,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: heigh / 2,
                  width: width / 1.3,
                  child: SwipeCards(),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  // color: Colors.red,
                  padding: EdgeInsets.all(width / 20),
                  child: DelayedAnimation(
                      delay: 500,
                      child: ButtomCardSwitch(
                        leftButton: () => _swipeKey.currentState.swipeLeft(),
                        rightButton: () => _swipeKey.currentState.swipeRight(),
                        middleButton: () => _swipeKey.currentState.rewind(),
                      )),
                ),
              )
            ],
          ),
        ),
      );
    }

    return mainScreen();
  }
}
