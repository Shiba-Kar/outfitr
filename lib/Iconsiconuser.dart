import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Iconsiconuser extends StatelessWidget {
  Iconsiconuser({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'NoPath_-_Copy_18_' (shape)
        Container(
          width: 36.0,
          height: 36.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.elliptical(18.0, 18.0)),
            color: const Color(0xffffc641),
          ),
        ),
        Transform.translate(
          offset: Offset(11.0, 11.0),
          child:
              // Adobe XD layer: 'icon-user' (group)
              Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(3.65, 0.0),
                child:
                    // Adobe XD layer: 'Ellipse_2767' (shape)
                    Container(
                  width: 7.0,
                  height: 6.9,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(3.51, 3.45)),
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0.8, 8.62),
                child:
                    // Adobe XD layer: 'Path_1468' (shape)
                    SvgPicture.string(
                  _svg_jt10bg,
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

const String _svg_jt10bg =
    '<svg viewBox="0.8 8.6 12.7 6.3" ><path transform="translate(0.8, 8.62)" d="M 6.363636493682861 0 C 2.849097013473511 0 0 2.79822039604187 0 6.25 L 12.72727298736572 6.25 C 12.72727298736572 2.79822039604187 9.878175735473633 0 6.363636493682861 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
