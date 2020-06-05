import 'package:flutter/material.dart';

class Shirtsize extends StatelessWidget {
  final String size;
  final bool isActive;
  const Shirtsize({@required this.size, @required this.isActive, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width / 10,
      height: width / 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(width / 2)),
        color: isActive ? const Color(0xff2cb9b0) : const Color(0xfff6f6f6),
      ),
      child: Center(
        child: Text(
          size,
          style: TextStyle(
            fontFamily: 'Inter-SemiBold',
            fontSize: 12,
            color: isActive ? const Color(0xffffffff) : const Color(0xff0C0D34),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
