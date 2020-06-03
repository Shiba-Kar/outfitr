import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Iconsiconfacebook extends StatelessWidget {
  Iconsiconfacebook({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'bg' (shape)
        Container(
          width: 44.0,
          height: 44.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: const Color(0xfff6f6f6),
          ),
        ),
        Transform.translate(
          offset: Offset(17.0, 13.0),
          child:
              // Adobe XD layer: 'icon-facebook' (shape)
              SvgPicture.string(
            _svg_lk3vii,
            allowDrawingOutsideViewBox: true,
          ),
        ),
      ],
    );
  }
}

const String _svg_lk3vii =
    '<svg viewBox="17.0 13.0 9.3 18.0" ><path transform="translate(17.0, 13.0)" d="M 6.067405700683594 18 L 6.067405700683594 9.789327621459961 L 8.823328018188477 9.789327621459961 L 9.235987663269043 6.589483261108398 L 6.067405700683594 6.589483261108398 L 6.067405700683594 4.546584606170654 C 6.067405700683594 3.620155811309814 6.324660301208496 2.988825082778931 7.653136730194092 2.988825082778931 L 9.34754467010498 2.98808479309082 L 9.34754467010498 0.1261180490255356 C 9.054503440856934 0.08712264895439148 8.048685073852539 0 6.878493785858154 0 C 4.435521602630615 0 2.762997388839722 1.491204142570496 2.762997388839722 4.229685306549072 L 2.762997388839722 6.589483261108398 L 0 6.589483261108398 L 0 9.789327621459961 L 2.762997388839722 9.789327621459961 L 2.762997388839722 18 L 6.067405700683594 18 Z" fill="#3c5a99" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
