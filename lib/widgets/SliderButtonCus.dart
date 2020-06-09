import 'package:flutter/material.dart';
import 'package:outfitr/Iconsiconswipe.dart';
import 'package:slider_button/slider_button.dart';

class SliderButtonCus extends StatelessWidget {
  final VoidCallback action;
  final String text;
  const SliderButtonCus({@required this.text, this.action, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      child: SliderButton(
        vibrationFlag: false,
        width: width / 1.4,
        backgroundColor: Color(0xff2CB9B0),
        alignLabel: Alignment.center,
        boxShadow: BoxShadow(),
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: Iconsiconswipe(),
        ),
        action:action,
        shimmer: true,
        label: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
