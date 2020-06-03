import 'package:flutter/material.dart';
import 'package:outfitr/widgets/DelayedAnimation.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({
    Key key,
  }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[DelayedAnimation(
          delay: 500,
          child: ShapeGallery()), Heading()],
      ),
    );
  }
}

class ShapeGallery extends StatelessWidget {
  const ShapeGallery({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    
    return Container(
     // color:Colors.red,
      margin:  EdgeInsets.all(width/100),
      height: height / 1.2,
      padding: EdgeInsets.all(width/200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: width / 4,
                height: height / 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(79380.0),
                  color: const Color(0xffffdddd),
                ),
              ),
              Container(
                width: width / 4,
                height: height / 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(53.0),
                    bottomRight: Radius.circular(54.0),
                    bottomLeft: Radius.circular(53.0),
                  ),
                  color: const Color(0xffd4f1ef),
                ),
              ),
              Container(
                width: width / 4,
                height: height / 7,
                color: const Color(0xffffecc5),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: width / 4,
                height: height / 7,
                color: const Color(0xffd7ecff),
              ),
              Container(
                width: width / 4,
                height: height / 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(79380.0),
                  color: const Color(0xffffe4d9),
                ),
              ),
              Container(
                width: width / 4,
                height: height / 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(54.0),
                    topRight: Radius.circular(53.0),
                    bottomRight: Radius.circular(53.0),
                  ),
                  color: const Color(0xffcaeff3),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: width / 4,
                height: height / 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(428.65),
                    bottomRight: Radius.circular(428.65),
                  ),
                  color: const Color(0xfff3f0ef),
                ),
              ),
              Container(
                width: width / 4,
                height: height / 7,
                color: const Color(0xfffff4c5),
              ),
              Container(
                width: width / 4,
                height: height / 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4762.8),
                    bottomRight: Radius.circular(793800.0),
                    bottomLeft: Radius.circular(793800.0),
                  ),
                  color: const Color(0xfffde8ca),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: width / 4,
                height: height / 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(79380.0),
                  color: const Color(0xffd6faff),
                ),
              ),
              Container(
                width: width / 4,
                height: height / 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(54.0),
                    bottomRight: Radius.circular(53.0),
                    bottomLeft: Radius.circular(53.0),
                  ),
                  color: const Color(0xffdfeaea),
                ),
              ),
              Container(
                width: width / 4,
                height: height / 7,
                color: const Color(0xffffeaed),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: width / 4,
                height: height / 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(428.65),
                    bottomRight: Radius.circular(428.65),
                  ),
                  color: const Color(0xffbeecc4),
                ),
              ),
              Container(
                width: width / 4,
                height: height / 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4762.8),
                    bottomRight: Radius.circular(793800.0),
                    bottomLeft: Radius.circular(793800.0),
                  ),
                  color: const Color(0xfffce9d7),
                ),
              ),
              Container(
                width: width / 4,
                height: height / 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(428.65),
                    bottomRight: Radius.circular(428.65),
                  ),
                  color: const Color(0xffbfeaf5),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Heading extends StatefulWidget {
  const Heading({Key key}) : super(key: key);

  @override
  _HeadingState createState() => _HeadingState();
}

class _HeadingState extends State<Heading> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  final int delayedAmount = 500;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          DelayedAnimation(
            delay: 2,
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'PlayfairDisplay-Bold',
                  fontSize: 60,
                  color: const Color(0xff0c0d34),
                  letterSpacing: -1.2500000381469727,
                ),
                children: [
                  TextSpan(
                    text: 'Outfitr',
                  ),
                  TextSpan(
                    text: '.',
                    style: TextStyle(
                      color: const Color(0xff2cb9b0),
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          DelayedAnimation(
            delay: 300,
            child: Text(
              'Find your style',
              style: TextStyle(
                // fontFamily: 'SFProDisplay-Semibold',
                fontSize: 12,
                color: const Color(0x660c0d34),
                letterSpacing: 1.5,
                height: 2,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
