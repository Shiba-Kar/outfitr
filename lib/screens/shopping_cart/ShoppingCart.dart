import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outfitr/Iconsiconback.dart';
import 'package:outfitr/Iconsiconbag.dart';
import 'package:outfitr/widgets/ButtonsPrimarybutton.dart';
import 'package:outfitr/Iconsswipeline.dart';
class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0x800c0d34),
      body: Container(
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: width,
                height: height / 1.13,
                child: SvgPicture.asset(
                  'assets/svg/shopping_cart_bg.svg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.all(width / 40),
                color: const Color(0xFF2CB9B0),
                height: width / 10,
                width: width,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Iconsiconback(
                        onTap: () => Navigator.of(context).pop(),
                      ),
                      Text(
                        'SHOPPING CART',
                        style: TextStyle(
                          fontFamily: 'SFProDisplay-Semibold',
                          fontSize: width / 40,
                          color: const Color(0xffffffff),
                          letterSpacing: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Iconsiconbag(
                        itemsCount: "12",
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ShoppingCart(),
                          ),
                        ),
                      )
                    ],),
              ),
            ),
            Positioned(
              top: width / 5,
              left: width / 3,
              child: Text(
                '3 Items added',
                style: TextStyle(
                  fontFamily: 'SFProDisplay-Semibold',
                  fontSize: 24,
                  color: const Color(0xffffffff),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              bottom: width/4,
              left: width/2.6,
              child: Container(
                // color: Colors.red,
                width: width / 4,
                height: height / 50,
                child: Center(child: Iconsswipeline()),
              ),
            ),
           
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height / 10,
                width: width,
                margin: EdgeInsets.all(width / 500),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: width / 2,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Total Payment:',
                            style: TextStyle(
                              fontFamily: 'SFProDisplay-Regular',
                              fontSize: 14,
                              color: const Color(0x80ffffff),
                              height: 1.7142857142857142,
                            ),
                            textAlign: TextAlign.left,
                          ), // Adobe XD layer: '$189,94' (text)
                          Text(
                            '\Rs. 1890.0',
                            style: TextStyle(
                              fontFamily: 'SFProDisplay-Semibold',
                              fontSize: 20,
                              color: const Color(0xffffffff),
                              letterSpacing: -0.1666666603088379,
                              height: 1.1,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                    Container(
                        width: width / 2.2,
                        child: ButtonsPrimarybutton(
                          text: "Go to checkout",
                          onTap: () {},
                        ))
                  ],
                ),
              ),
            ),
             Positioned(
              top: width/10,
              left: 0.0,
              child: Container(
                color: Colors.red,
                height:width
              )
            ),
          ],
        ),
      ),
    );
  }
}
