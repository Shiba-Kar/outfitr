import 'package:flutter/material.dart';

class Iconsiconclose extends StatelessWidget {
  final VoidCallback onTap;
  final bool isBlue;
  const Iconsiconclose({@required this.onTap, @required this.isBlue, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: width / 7,
          height: width / 7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(width / 2)),
            color: isBlue ? const Color(0xff0c0d34) : const Color(0xffffffff),
          ),
          child: Icon(Icons.close,
              size: width / 15, color: isBlue ? Colors.white : Colors.black)),
    );
  }
}
