import 'package:flutter/material.dart';

class Iconsswipeline extends StatelessWidget {
  Iconsswipeline({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'swipe-line' (shape)
        Container(
          width: 60.0,
          height: 5.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.5),
            color: const Color(0x1a151624),
          ),
        ),
      ],
    );
  }
}
