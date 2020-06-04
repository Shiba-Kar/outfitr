import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Iconsiconideas extends StatelessWidget {
  Iconsiconideas({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'NoPath_-_Copy_18_ C…' (shape)
        Container(
          width: 36.0,
          height: 36.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.elliptical(18.0, 18.0)),
            color: const Color(0xff2cb9b0),
          ),
        ),
        Transform.translate(
          offset: Offset(11.0, 9.0),
          child:
              // Adobe XD layer: 'icon-ideas' (group)
              Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(0.1, 0.11),
                child:
                    // Adobe XD layer: 'Path' (shape)
                    SvgPicture.string(
                  _svg_p0yr3v,
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

const String _svg_p0yr3v =
    '<svg viewBox="0.1 0.1 13.8 17.6" ><path transform="translate(0.1, 0.11)" d="M 4.628242015838623 17.64384651184082 L 6.156838893890381 10.50169372558594 L 0 10.50169372558594 L 9.170677185058594 0 L 7.644722461700439 7.142153263092041 L 13.79885196685791 7.142153263092041 L 4.628242015838623 17.64384651184082 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
