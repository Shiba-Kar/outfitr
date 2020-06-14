import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outfitr/Iconsiconbag.dart';

import 'package:outfitr/screens/category_product/InAppPopups.dart';

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
  final GlobalKey<SwipeStackState> _swipeKey =
      GlobalKey<SwipeStackState>(debugLabel: 's');
  final GlobalKey<SliderMenuContainerState> _menueKey =
      GlobalKey<SliderMenuContainerState>(debugLabel: 'd');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final heigh = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    Widget mainScreen() {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SliderMenuContainer(
          appBarColor: Colors.white,
          trailing: Iconsiconbag(
            color: Colors.black,
            itemsCount: "12",
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => InAppPopups(),
              ),
            ),
          ),
          key: _menueKey,
          appBarPadding: EdgeInsets.all(width / 40),
          sliderMenuOpenOffset: width / 1.3,
          appBarHeight: width / 20,
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
          sliderMenuWidget: Menu(
            menueKey: _menueKey,
          ),
          /*  drawerIcon: Iconsiconmenu(), */
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
                    fit: BoxFit.fill,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                    height: heigh / 2,
                    width: width / 1.3,
                    child: SwipeStack(
                      key: _swipeKey,
                      children:
                          [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((int index) {
                        return SwiperItem(builder:
                            (SwiperPosition position, double progress) {
                          return Material(
                              elevation: 9,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: index.isEven
                                        ? Color(0xffBEECC4)
                                        : Color(0xffF1E0FF),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("Item $index",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20)),
                                      Text("Progress $progress",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 12)),
                                    ],
                                  )));
                        });
                      }).toList(),
                      visibleCount: 3,
                      stackFrom: StackFrom.Top,
                      translationInterval: 6,
                      scaleInterval: 0.03,
                      onEnd: () => debugPrint("onEnd"),
                      onSwipe: (int index, SwiperPosition position) =>
                          debugPrint("onSwipe $index $position"),
                      onRewind: (int index, SwiperPosition position) =>
                          debugPrint("onRewind $index $position"),
                    )),
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

    return GestureDetector(
      onTap: () => _menueKey.currentState.closeDrawer(),
      child: mainScreen(),
    );
  }
}
