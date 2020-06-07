import 'package:flutter/material.dart';

class ButtomCardSwitch extends StatelessWidget {
  final VoidCallback rightButton;
  final VoidCallback leftButton;
  final VoidCallback middleButton;
  const ButtomCardSwitch(
      {this.rightButton, this.leftButton, this.middleButton, Key key})
      : super(key: key);

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
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: leftButton,
              ),
              IconButton(
                icon: Icon(Icons.open_in_new),
                onPressed: middleButton,
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: rightButton,
              ),
            ],
          )),
    );
  }
}
