import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:outfitr/Iconsiconcheckmarkstroke.dart';

import 'package:outfitr/widgets/Iconsiconclose.dart';

import 'package:outfitr/widgets/ProgressBar.dart';

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
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              child: ProgressBar(
                progress: 0.33,
                step: '1',
              ),
            ),
          ),
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
                    height: height / 5.2,
                    //color: Colors.red,
                    child: CarouselSlider(
                      options: CarouselOptions(
                          // aspectRatio: 0.1,
                          enlargeCenterPage: true,
                          viewportFraction: 0.4,
                          autoPlay: true,
                          pauseAutoPlayOnTouch: true,
                          height: width / 2),
                      items: [1, 2, 3, 4, 5].map(
                        (i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Stack(children: [
                                Container(
                                  width: width / 1.1,
                                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                                  decoration: BoxDecoration(
                                    color: i == 1
                                        ? Colors.amber
                                        : i == 2
                                            ? Colors.red
                                            : i == 3
                                                ? Colors.orange
                                                : i == 4
                                                    ? Colors.pink
                                                    : Colors.green,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Container(),
                                ),
                                i == 1
                                    ? Align(
                                        alignment: Alignment.topRight,
                                        child: Iconsiconcheckmarkstroke(),
                                      )
                                    : Container(),
                              ]);
                            },
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                margin: EdgeInsets.only(bottom: height / 20),
                child: Iconsiconclose(
                  onTap: () => Navigator.pop(context),
                  isBlue: true,
                )),
          )
        ],
      ),
    );
  }
}
