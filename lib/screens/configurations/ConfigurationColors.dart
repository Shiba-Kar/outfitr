import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:outfitr/screens/SuccessPopupScreen.dart';
import 'dart:ui' as ui;
import 'package:outfitr/widgets/ButtonsPrimarybutton.dart';
import 'package:outfitr/widgets/Iconsiconcheckmark.dart';
import 'package:outfitr/widgets/Iconsiconemail.dart';
import 'package:outfitr/widgets/Iconsiconlock.dart';

class ConfigurationColor extends StatelessWidget {
  ConfigurationColor({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff0c0d34),
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0.0,
            bottom: 1,
            child: Container(
              width: width,
              height: height / 1.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60.0),
                  topRight: Radius.circular(60.0),
                ),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Positioned(
            top: height / 3.5,
            left: 0.0,
            child: Container(
              width: width,
              height: height / 1.9,
              //color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: height / 25,
                    child: Text(
                      'OUTFIT GENARATOR',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Semibold',
                        fontSize: 12,
                        color: const Color(0x800c0d34),
                        letterSpacing: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    'Colors you prefer',
                    style: TextStyle(
                      fontFamily: 'SFProDisplay-Semibold',
                      fontSize: 28,
                      color: const Color(0xff0c0d34),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    width: width / 1.6,
                    child: Text(
                      'Based on your selections we will generate outfitst matching your colors.',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Regular',
                        fontSize: 16,
                        color: const Color(0x800c0d34),
                        height: height / 600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: height / 5,
                    child: CarouselSlider(
                      options: CarouselOptions(height: 400.0),
                      items: [1, 2, 3, 4, 5].map(
                        (i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(color: Colors.amber),
                                child: Text(
                                  'text $i',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              );
                            },
                          );
                        },
                      ).toList(),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
