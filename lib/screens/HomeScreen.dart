import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outfitr/Iconsiconbag.dart';

import 'package:outfitr/widgets/ButtomCardSwitch.dart';

import 'package:outfitr/widgets/Iconsiconmenu.dart';
import 'package:outfitr/widgets/ItemsCategories.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  FancyDrawerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = FancyDrawerController(
        vsync: this, duration: Duration(milliseconds: 250))
      ..addListener(() {
        setState(() {}); // Must call setState
      }); // This chunk of code is important
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final heigh = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Material(
      child: FancyDrawerWrapper(
        controller: _controller,
        drawerItems: <Widget>[
          Text(
            "Go to home",
            style: TextStyle(
              fontSize: 18,
              color: Colors.purple.shade700,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "About us",
            style: TextStyle(
              fontSize: 18,
              color: Colors.purple.shade700,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Our products",
            style: TextStyle(
              fontSize: 18,
              color: Colors.purple.shade700,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Support us",
            style: TextStyle(
              fontSize: 18,
              color: Colors.purple.shade700,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Log out",
            style: TextStyle(
              fontSize: 18,
              color: Colors.purple.shade700,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: Iconsiconbag(),
                onPressed: () {},
              )
            ],
            centerTitle: true,
            elevation: 0.0,
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
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Iconsiconmenu(),
              onPressed: () {
                _controller.toggle();
              },
            ),
          ),
          body: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ItemsCategories(
                      color: Colors.pink,
                      title: "New In",
                    ),
                    ItemsCategories(
                      color: Colors.pink,
                      title: "Summer",
                    ),
                    ItemsCategories(
                      color: Colors.pink,
                      title: "Archivewear",
                    ),
                    ItemsCategories(
                      color: Colors.pink,
                      title: "Outlet",
                    ),
                    ItemsCategories(
                      color: Colors.pink,
                      title: "Accent",
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -width / 5,
                left: 0.0,
                child: Container(
                  color: Colors.red,
                  height: heigh / 1.3,
                  width: width,
                  child: SvgPicture.asset(
                    'assets/svg/home_bg.svg',
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  // color: Colors.red,
                  padding: EdgeInsets.all(width / 20),
                  child: ButtomCardSwitch(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
