import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outfitr/widgets/ButtonsPrimarybutton.dart';
import 'package:outfitr/widgets/Iconsiconprevious.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.all(width / 40),
              height: width / 10,
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Iconsiconprevious(
                     iconColor: Colors.black,
                    color:Colors.white,
                    onTap: () => Navigator.of(context).pop(),
                  ),
                  Text(
                    'TRANSACTION HISTORY',
                    style: TextStyle(
                      fontFamily: 'SFProDisplay-Semibold',
                      fontSize: width / 40,
                      color: Colors.black,
                      letterSpacing: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Icon(Icons.open_in_new)
                ],
              ),
            ),
          ),
          Positioned(
            top: width / 10,
            left: 0.0,
            child: Container(
              height: height / 10,
              width: width,
              margin: EdgeInsets.only(top:width / 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
           
                children: <Widget>[
                  Container(
                    width: width / 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'TOTAL SPENT :',
                          style: TextStyle(
                            fontFamily: 'SFProDisplay-Regular',
                            fontSize: 14,
                            color: Colors.grey,
                            height: 1.7142857142857142,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          '\Rs. 1890.0',
                          style: TextStyle(
                            fontFamily: 'SFProDisplay-Semibold',
                            fontSize: 30,
                            color: Colors.black,
                            letterSpacing: -0.1666666603088379,
                            height: 1.1,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 88.0,
                    height: 36.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: const Color(0x1a2cb9b0),
                    ),
                    child: Center(
                      child: Text(
                        'All Time',
                        style: TextStyle(
                          fontFamily: 'SFProDisplay-Medium',
                          fontSize: 14,
                          color: const Color(0xff2cb9b0),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: width / 3,
            left: 0.0,
            child: Container(
              height: width / 2,
              width: width,
              child: SvgPicture.asset('assets/svg/chart.svg'),
              //  / color: Colors.red,
            ),
          ),
          Positioned(
            top: width / 1.2,
            left: 0.0,
            child: Container(
              padding: EdgeInsets.all(width / 20),
              //  / color: Colors.red,
              height: width / 1.9,
              width: width,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.all(10.0),
                    trailing: Text("See More"),
                    title: Row(
                      children: <Widget>[
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(width / 2),
                            ),
                            color: Colors.orange,
                          ),
                        ),
                        Container(
                          width: width / 30,
                        ),
                        Text(
                          '#245673',
                          style: TextStyle(
                            fontFamily: 'SFProDisplay-Semibold',
                            fontSize: 16,
                            color: const Color(0xff0c0d34),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    subtitle: Text(
                      '\$198,54 - 17 February, 2020',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Regular',
                        fontSize: 13,
                        color: const Color(0x800c0d34),
                        height: 1.5384615384615385,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(10.0),
                    trailing: Text("See More"),
                    title: Row(
                      children: <Widget>[
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(width / 2),
                            ),
                            color: Colors.green,
                          ),
                        ),
                        Container(
                          width: width / 30,
                        ),
                        Text(
                          '#245673',
                          style: TextStyle(
                            fontFamily: 'SFProDisplay-Semibold',
                            fontSize: 16,
                            color: const Color(0xff0c0d34),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    subtitle: Text(
                      '\$198,54 - 17 February, 2020',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Regular',
                        fontSize: 13,
                        color: const Color(0x800c0d34),
                        height: 1.5384615384615385,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(10.0),
                    trailing: Text("See More"),
                    title: Row(
                      children: <Widget>[
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(width / 2),
                              ),
                              color: Colors.red),
                        ),
                        Container(
                          width: width / 30,
                        ),
                        Text(
                          '#245673',
                          style: TextStyle(
                            fontFamily: 'SFProDisplay-Semibold',
                            fontSize: 16,
                            color: const Color(0xff0c0d34),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    subtitle: Text(
                      '\$198,54 - 17 February, 2020',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Regular',
                        fontSize: 13,
                        color: const Color(0x800c0d34),
                        height: 1.5384615384615385,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              ),
              //  / color: Colors.red,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset(
              'assets/svg/history_pattern.svg',
              fit: BoxFit.fill,
              width: width,
            ),
          )
        ],
      ),
    );
  }
}
