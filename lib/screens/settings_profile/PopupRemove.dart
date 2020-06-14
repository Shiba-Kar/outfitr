import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outfitr/Iconsiconquestionmark.dart';
import 'package:outfitr/widgets/ButtonsPrimarybutton.dart';
import 'package:outfitr/widgets/DelayedAnimation.dart';
import 'package:outfitr/widgets/Iconsiconcheckmark.dart';
import 'package:outfitr/widgets/Iconsiconclose.dart';
import 'package:outfitr/widgets/PeopleRow.dart';

class PopupRemove extends StatelessWidget {
  PopupRemove({
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
          Positioned(
            top: width / 2,
            child: Container(
                height: height / 1.7,
                width: width,
                // color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: width / 6,
                      height: width / 6,
                      // color: Colors.red,
                      child: Iconsiconquestionmark(),
                    ),
                    Container(
                      margin: EdgeInsets.all(height / 30),
                      width: width,
                      child: Text(
                        'Are you sure you want to\n remove from favorites?',
                        style: TextStyle(
                          fontFamily: 'SFProDisplay-Semibold',
                          fontSize: 28,
                          color: const Color(0xff0c0d34),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: width / 2,
                      height: height / 15,
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: 'SFProDisplay-Semibold',
                            fontSize: 16,
                            color: const Color(0xff0c0d34),
                            height: 1.5,
                          ),
                          children: [
                            TextSpan(
                              text: 'Close this window and login again',
                              style: TextStyle(
                                fontFamily: 'SFProDisplay-Regular',
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(width / 8),
                      child: Hero(
                        tag: "remove",
                        child: ButtonsPrimarybutton(
                            text: "Remove from favorite",
                            onTap: () {
                              Navigator.of(context).pop();
                              /* Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ProductDetails())); */
                            }),
                      ),
                    )
                  ],
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                padding: EdgeInsets.all(width / 15),
                child: DelayedAnimation(
                  delay: 500,
                  child: Iconsiconclose(
                    isBlue: false,
                    onTap: () => Navigator.of(context).pop(),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
