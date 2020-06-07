import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Menu extends StatelessWidget {
  const Menu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
            top: width / 10,
            left: 0.0,
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: 156.0,
                  child: Text(
                    'Mike Peter',
                    style: TextStyle(
                      fontFamily: 'SFProDisplay-Semibold',
                      fontSize: 28,
                      color: const Color(0xff0c0d34),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                // Adobe XD layer: 'mike@flexinstudio.co' (text)
                Text(
                  'mike@flexinstudio.com',
                  style: TextStyle(
                    fontFamily: 'SFProDisplay-Regular',
                    fontSize: 16,
                    color: const Color(0x800c0d34),
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            )),
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
