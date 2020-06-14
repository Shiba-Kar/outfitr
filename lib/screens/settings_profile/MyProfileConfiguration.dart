import 'package:flutter/material.dart';
import 'package:outfitr/widgets/Iconsiconprevious.dart';

class MyProfileConfiguration extends StatelessWidget {
  const MyProfileConfiguration({Key key}) : super(key: key);

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
                  onTap: () => Navigator.of(context).pop(),
                ),
                Text(
                  'EDIT PROFILE',
                  style: TextStyle(
                    fontFamily: 'SFProDisplay-Semibold',
                    fontSize: width / 40,
                    color: Colors.black,
                    letterSpacing: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: width / 15,
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
