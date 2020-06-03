import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outfitr/widgets/ButtonsSecondarybutton.dart';
import 'package:outfitr/widgets/DelayedAnimation.dart';

const String _svg_w4c2rw =
    '<svg viewBox="0.0 0.0 375.0 672.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#ffd8f3ff"  /><stop offset="0.999921" stop-color="#fffff1f1"  /></linearGradient></defs><path  d="M 2.602085213965211e-15 0 L 375 0 L 375 430 C 375 474.1827697753906 339.1827697753906 510 295 510 L 80 510 C 35.81721878051758 510 0 545.8171997070313 0 590 L 0 672 L 2.602085213965211e-15 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /><path  d="M 2.602085213965211e-15 0 L 375 0 L 375 430 C 375 474.1827697753906 339.1827697753906 510 295 510 L 80 510 C 35.81721878051758 510 0 545.8171997070313 0 590 L 0 672 L 2.602085213965211e-15 0 Z" fill="#bfeaf5" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';

class Onboarding1 extends StatelessWidget {
  Onboarding1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: width,
            height: height / 1.1,
            child: SvgPicture.string(
              _svg_w4c2rw,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: RotatedBox(
              quarterTurns: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: width / 1,
                  child: DelayedAnimation(
                    delay: 300,
                    child: Text(
                      'Relaxed',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Bold',
                        fontSize: 80,
                        color: const Color(0xffffffff),
                        letterSpacing: -1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              //color: Colors.red.withAlpha(100),
              height: height / 3.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: width / 7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: width / 50,
                          height: height / 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(100.0, 100.0)),
                            color: const Color(0xff2CB9B0),
                          ),
                        ),
                        Container(
                            width: width / 50,
                            height: height / 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(100.0, 100.0)),
                              color: const Color(0x4d2cb9b0),
                            )),
                        Container(
                          width: width / 50,
                          height: height / 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(100.0, 100.0)),
                            color: const Color(0x4d2cb9b0),
                          ),
                        ),
                        Container(
                          width: width / 50,
                          height: height / 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(100.0, 100.0)),
                            color: const Color(0x4d2cb9b0),
                          ),
                        )
                      ],
                    ),
                  ),
                  DelayedAnimation(
                    delay: 800,
                                      child: SizedBox(
                      width: width / 1.5,
                      height: height / 29,
                      child: Text(
                          'Find Your Outfits',
                          style: TextStyle(
                            fontFamily: 'SFProDisplay-Semibold',
                            fontSize: 24,
                            color: const Color(0xff0c0d34),
                            height: 1.25,
                          ),
                          textAlign: TextAlign.center,
                        ),
                    ),
                  ),
                  SizedBox(
                    width: width / 1.5,
                    height: height / 15,
                    child: Text(
                      'Confused about your outfit? Don’t worry! Find the best outfit here!',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Regular',
                        fontSize: 16,
                        color: const Color(0xb20c0d34),
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ButtonsSecondarybutton(
                    text: "Next",
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
