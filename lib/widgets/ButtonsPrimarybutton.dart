import 'package:flutter/material.dart';

class ButtonsPrimarybutton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  ButtonsPrimarybutton({
    @required this.onTap,
    @required this.text,
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width / 2,
      height: height / 17,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width / 2),
        color: const Color(0xff2cb9b0),
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
            shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
        )),
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
    );
  }
}
