import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String title;
  final bool isActive;
  const CustomChip({@required this.title,@required this.isActive, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(2.0),
      width: width / 4,
      height: height / 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: isActive?const Color(0xff2cb9b0):const Color(0xfff6f6f6),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'SFProDisplay-Medium',
            fontSize: 14,
            color: isActive?const Color(0xffffffff):const Color(0xff0C0D34),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

