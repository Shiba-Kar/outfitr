import 'package:flutter/material.dart';

class Iconsiconunselected extends StatelessWidget {
  Iconsiconunselected({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 5,
      width: 5,
     
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(width / 2)),
        color: const Color(0x33ffffff),
        border: Border.all(width: 1.0, color: const Color(0xffffffff)),
      ),
    );
  }
}
