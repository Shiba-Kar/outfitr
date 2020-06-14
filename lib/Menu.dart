import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outfitr/Iconsiconheart.dart';
import 'package:outfitr/Iconsiconhistory.dart';
import 'package:outfitr/Iconsiconideas.dart';
import 'package:outfitr/Iconsiconlogout.dart';
import 'package:outfitr/Iconsiconsettings.dart';
import 'package:outfitr/Iconsiconuser.dart';
import 'package:outfitr/screens/settings_profile/MyProfileConfiguration.dart';
import 'package:outfitr/screens/settings_profile/NotificationSettings.dart';
import 'package:outfitr/screens/settings_profile/TransactionHistory.dart';

class Menu extends StatelessWidget {
  final GlobalKey<SliderMenuContainerState> menueKey;
  const Menu({@required this.menueKey, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    Widget tile({@required String title, Widget icon, @required Widget route}) {
      return GestureDetector(
        onTap: () {
          menueKey.currentState.closeDrawer();
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => route));
        },
        child: Container(
          width: width,
          child: ListTile(
            leading: icon,
            title: Text(
              title,
              style: TextStyle(
                fontFamily: 'SFProDisplay-Medium',
                fontSize: 16,
                color: const Color(0xff0c0d34),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      );
    }

    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: width,
            height: height / 4,
            //color: Colors.red,
            child: SvgPicture.asset(
              'assets/svg/drawer_bg.svg',
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: width / 7,
          left: width / 3.5,
          child: Container(
            height: width / 4,
            width: width / 4,
            decoration: BoxDecoration(
              color: Color(0xffFFDDDD),
              borderRadius: BorderRadius.all(
                Radius.circular(width / 2),
              ),
            ),
          ),
        ),
        Positioned(
          top: width / 2.5,
          left: width / 4.5,
          child: Column(
            children: <Widget>[
              Text(
                'Mike Peter',
                style: TextStyle(
                  fontFamily: 'SFProDisplay-Semibold',
                  fontSize: 28,
                  color: const Color(0xff0c0d34),
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'mike@flexinstudio.com',
                style: TextStyle(
                  fontFamily: 'SFProDisplay-Regular',
                  fontSize: 16,
                  color: const Color(0x800c0d34),
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Positioned(
          top: width / 1.6,
          left: 0.0,
          child: Container(
            // color: Colors.red,
            height: height / 2,
            child: Column(
              children: <Widget>[
                tile(
                    title: 'Outfit Ideas',
                    icon: Iconsiconideas(),
                    route: NotificationSettings()),
                tile(
                    title: 'Favorite Outfit',
                    icon: Iconsiconheart(),
                    route: NotificationSettings()),
                tile(
                    title: 'Edit Profile',
                    icon: Iconsiconuser(),
                    route: MyProfileConfiguration()),
                tile(
                    title: 'Transaction History',
                    icon: Iconsiconhistory(),
                    route: TransactionHistory()),
                tile(
                    title: 'Notifications Settings',
                    icon: Iconsiconsettings(),
                    route: NotificationSettings()),
                tile(
                    title: 'Logout',
                    icon: Iconsiconlogout(),
                    route: NotificationSettings())
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            // color: Colors.red,
            height: height / 7,
            width: width,
            child: SvgPicture.asset(
              'assets/svg/drawer_pattern.svg',
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
