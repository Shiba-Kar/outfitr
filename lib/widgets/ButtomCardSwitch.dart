import 'package:flutter/material.dart';

class ButtomCardSwitch extends StatelessWidget {
  const ButtomCardSwitch({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      child: Container(
          width: width / 2,
          height: height / 15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(width / 2),
            color: const Color(0xffffffff),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(Icons.arrow_back),
              Icon(Icons.open_in_new),
              Icon(Icons.arrow_forward),
            ],
          )),
    );
  }
}
