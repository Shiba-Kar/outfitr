import 'package:flutter/material.dart';

class ButtonsPrimarybutton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  ButtonsPrimarybutton({
    this.onTap,
    @required this.text,
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: <Widget>[
          // Adobe XD layer: 'bg' (shape)
          Align(
            alignment: Alignment.center,
            child: Container(
              width: width / 2,
              height: height / 17,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width/2),
                color: const Color(0xff2cb9b0),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            heightFactor: height / 350,
            child: SizedBox(
              width: width / 2,
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: 'SFProDisplay-Medium',
                  fontSize: 15,
                  color: const Color(0xffffffff),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
