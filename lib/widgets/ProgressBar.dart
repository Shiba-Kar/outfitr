import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final String step;
  final double progress;
  const ProgressBar({@required this.step, @required this.progress, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Container(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'Step $step/3',
                  style: TextStyle(
                    fontFamily: 'SFProDisplay-Medium',
                    fontSize: 18,
                    color: const Color(0xffffffff),
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'Skip',
                  style: TextStyle(
                    fontFamily: 'SFProDisplay-Medium',
                    fontSize: 14,
                    color: const Color(0xffffffff),
                  ),
                  textAlign: TextAlign.right,
                )
              ],
            ),
          ),
          Container(
            width: width / 1.7,
            margin: EdgeInsets.only(top: width / 20),
            child: LinearProgressIndicator(
              backgroundColor: Color(0x1affffff),
              value: progress,
            ),
          )
        ],
      ),
    );
  }
}
