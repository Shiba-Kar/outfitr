import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Iconsiconlogout extends StatelessWidget {
  Iconsiconlogout({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'NoPath_-_Copy_18_7' (shape)
        Container(
          width: 36.0,
          height: 36.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.elliptical(18.0, 18.0)),
            color: const Color(0xff0c0d34),
          ),
        ),
        Transform.translate(
          offset: Offset(10.0, 11.0),
          child:
              // Adobe XD layer: 'icon-logout' (group)
              Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(0.0, 0.02),
                child:
                    // Adobe XD layer: 'Path' (shape)
                    SvgPicture.string(
                  _svg_1nq056,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

const String _svg_1nq056 =
    '<svg viewBox="0.0 0.0 17.0 14.0" ><path transform="translate(0.0, 0.02)" d="M 6.611096382141113 3.727355003356934 L 6.611096382141113 0 L 0 6.522881984710693 L 6.611096382141113 13.04576396942139 L 6.611096382141113 9.225239753723145 C 11.33333301544189 9.225239753723145 14.63890361785889 10.71617317199707 17 13.97763538360596 C 16.05557060241699 9.318408966064453 13.22223663330078 4.659226417541504 6.611096382141113 3.727355003356934 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
