import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outfitr/widgets/Iconsiconprevious.dart';

class NotificationSettings extends StatelessWidget {
  const NotificationSettings({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.all(width / 40),
              height: width / 10,
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Iconsiconprevious(
                    color: Colors.white,
                    iconColor: Colors.black,
                    onTap: () => Navigator.of(context).pop(),
                  ),
                  Text(
                    'NOTIFICATIONS',
                    style: TextStyle(
                      fontFamily: 'SFProDisplay-Semibold',
                      fontSize: width / 40,
                      color: Colors.black,
                      letterSpacing: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(width: width / 20)
                ],
              ),
            ),
          ),
          Positioned(
            top: width / 7,
            left: 0.0,
            child: Container(
              height: width / 1.3,
              width: width,
              // color: Colors.red,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Outfit Ideas',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Semibold',
                        fontSize: 16,
                        color: const Color(0xff0c0d34),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    subtitle: Text(
                      'Receive daily notifications',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Regular',
                        fontSize: 13,
                        color: const Color(0x800c0d34),
                        height: 1.5384615384615385,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    trailing: CustomSwitch(
                      activeColor: Color(0xFF2CB9B0),
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Discounts & Sales',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Semibold',
                        fontSize: 16,
                        color: const Color(0xff0c0d34),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    subtitle: Text(
                      'Buy the stuff you love for less',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Regular',
                        fontSize: 13,
                        color: const Color(0x800c0d34),
                        height: 1.5384615384615385,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    trailing: CustomSwitch(
                      activeColor: Color(0xFF2CB9B0),
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Stock Notifications',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Semibold',
                        fontSize: 16,
                        color: const Color(0xff0c0d34),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    subtitle: Text(
                      'If the product you 💜 comes back in stock',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Regular',
                        fontSize: 13,
                        color: const Color(0x800c0d34),
                        height: 1.5384615384615385,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    trailing: CustomSwitch(
                      activeColor: Color(0xFF2CB9B0),
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'New Stuff',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Semibold',
                        fontSize: 16,
                        color: const Color(0xff0c0d34),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    subtitle: Text(
                      'Hear it first, wear it first',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Regular',
                        fontSize: 13,
                        color: const Color(0x800c0d34),
                        height: 1.5384615384615385,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    trailing: CustomSwitch(
                      activeColor: Color(0xFF2CB9B0),
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset(
              'assets/svg/pattern_bg_settings.svg',
              width: width,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
