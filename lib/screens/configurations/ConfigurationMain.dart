import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outfitr/Iconsiconcheckmarkbig.dart';
import 'package:outfitr/Iconsiconswipe.dart';
import 'package:outfitr/screens/configurations/ConfigurationColors.dart';
import 'package:outfitr/screens/configurations/Configurations.dart';
import 'package:outfitr/widgets/ButtonsPrimarybutton.dart';
import 'package:outfitr/widgets/CustomChip.dart';
import 'package:outfitr/widgets/ShirtSize.dart';
import 'package:outfitr/widgets/SliderButtonCus.dart';
import 'package:slider_button/slider_button.dart';

class ConfigurationMain extends StatelessWidget {
  ConfigurationMain({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const String _svg_zaidlg =
        '<svg viewBox="0.0 -10.0 375.0 634.0" ><path transform="translate(0.0, 624.0)" d="M 0 -60 C 0 -26.8629150390625 26.8629150390625 1.319777620523155e-14 60 1.319777620523155e-14 L 315 1.319777620523155e-14 C 348.1370849609375 1.319777620523155e-14 375 -26.8629150390625 375 -60 L 375 -381.7907104492188 C 375 -425.9734802246094 339.1827697753906 -461.7907104492188 295 -461.7907104492188 L 80 -461.7907104492188 C 35.81721878051758 -461.7907104492188 0 -497.60791015625 0 -541.7907104492188 L 0 -634 L 0 -60 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff0c0d34),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: height / 3,
              width: width,
              child: Image.asset(
                'assets/images/bg-pattern1.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: height / 9,
            left: 0.0,
            child: Container(
              height: height,
              width: width,
              child: SvgPicture.string(
                _svg_zaidlg,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              // color: Colors.red,
              height: height / 2,
              width: width / 1.1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                  Container(
                    height: height / 15,
                    child: Text(
                      'Configure account',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Semibold',
                        fontSize: 28,
                        color: const Color(0xff0c0d34),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    //color: Colors.red,
                    height: height / 8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'What outfits do you want to see?',
                          style: TextStyle(
                            fontFamily: 'SFProDisplay-Regular',
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            CustomChip(
                              title: "For Man",
                              isActive: false,
                            ),
                            CustomChip(
                              title: "For Women",
                              isActive: true,
                            ),
                            CustomChip(
                              title: "Both",
                              isActive: false,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    //color: Colors.red,
                    height: height / 8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'What typme of outfit you usually wear?',
                          style: TextStyle(
                            fontFamily: 'SFProDisplay-Regular',
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            CustomChip(
                              title: "Sports",
                              isActive: false,
                            ),
                            CustomChip(
                              title: "Smart Casual",
                              isActive: true,
                            ),
                            CustomChip(
                              title: "Casual",
                              isActive: false,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    //color: Colors.red,
                    height: height / 8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'What is your size?',
                          style: TextStyle(
                            fontFamily: 'SFProDisplay-Regular',
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Shirtsize(
                              size: 'S',
                              isActive: false,
                            ),
                            Shirtsize(
                              size: 'M',
                              isActive: true,
                            ),
                            Shirtsize(
                              size: 'L',
                              isActive: true,
                            ),
                            Shirtsize(
                              size: 'XL',
                              isActive: false,
                            ),
                            Shirtsize(
                              size: 'XXL',
                              isActive: false,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  // color: Colors.red,
                  padding: EdgeInsets.all(width / 15),
                  child: SliderButtonCus(
                    text: "Swipe to continue",
                    action: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => Configurations(),
                      ),
                    ),
                  )))
        ],
      ),
    );
  }
}
