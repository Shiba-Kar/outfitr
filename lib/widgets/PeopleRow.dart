import 'package:flutter/material.dart';

class PeopleRow extends StatelessWidget {
  const PeopleRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
        child: Stack(
      children: <Widget>[
        Positioned(
           left: 1,
          top: 0.0,
          child: Container(
            width: width / 10,
            height: width / 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width / 2),
              color: const Color(0xffc4c4c4),
              border: Border.all(width: 2.0, color: const Color(0xffffffff)),
            ),
          ),
        ),
        Positioned(
            left: 30,
          top: 0.0,
          child: Container(
            width: width / 10,
            height: width / 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width / 2),
              color: const Color(0xffc4c4c4),
              border: Border.all(width: 2.0, color: const Color(0xffffffff)),
            ),
          ),
        ),
        Positioned(
            left: 60,
          top: 0.0,
          child: Container(
            width: width / 10,
            height: width / 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width / 2),
              color: const Color(0xffc4c4c4),
              border: Border.all(width: 2.0, color: const Color(0xffffffff)),
            ),
          ),
        ),
        Positioned(
          left: 90,
          top: 0.0,
          child: Container(
            width: width / 10,
            height: width / 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width / 2),
              color: const Color(0xffc4c4c4),
              border: Border.all(width: 2.0, color: const Color(0xffffffff)),
            ),
          ),
        ),
        Positioned(
          left: 120,
          top: 0.0,
          child: Container(
            width: width / 10,
            height: width / 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width / 2),
              color: const Color(0xff2cb9b0),
              border: Border.all(width: 2.0, color: const Color(0xffffffff)),
            ),
            child: Center(
              child: Text(
                '+13',
                style: TextStyle(
                  fontFamily: 'SFProDisplay-Semibold',
                  fontSize: 12,
                  color: const Color(0xffffffff),
                  letterSpacing: -0.6000000000000001,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )
      ],
    ));
  }
}
