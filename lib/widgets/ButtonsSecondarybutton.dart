import 'package:flutter/material.dart';

class ButtonsSecondarybutton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  ButtonsSecondarybutton({
    this.onTap,
    @required this.text,
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Material(
          child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: width / 2,
          height: height / 17,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(width / 2),
            color: const Color(0x0d0c0d34),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'SFProDisplay-Medium',
                fontSize: 15,
                color: const Color(0xff0c0d34),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
