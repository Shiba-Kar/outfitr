import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outfitr/Iconsiconback.dart';
import 'package:outfitr/Iconsiconbag.dart';
import 'package:outfitr/Iconsswipeline.dart';
import 'package:outfitr/screens/shopping_cart/ShoppingCart.dart';
import 'package:outfitr/widgets/DelayedAnimation.dart';
import 'package:outfitr/widgets/PeopleRow.dart';
import 'package:outfitr/widgets/ProductCard.dart';
import 'package:outfitr/widgets/ShirtSize.dart';
import 'package:outfitr/widgets/SliderButtonCus.dart';


class ProductDetails extends StatelessWidget {
  const ProductDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff0c0d34),
      body: ListView(
        padding: const EdgeInsets.all(0.0),
        children: <Widget>[
          Stack(
            children: [
              Container(
                // color: Colors.green,
                width: width,
                height: height + (height / 1.6),
                child: SvgPicture.asset(
                  'assets/svg/product_details_bg.svg',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: height / 1.6,
                left: 0.0,
                child: Container(
                  // color: Colors.red[100],
                  height: height,
                  width: width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'long pants',
                        style: TextStyle(
                          fontFamily: 'SFProDisplay-Semibold',
                          fontSize: width / 30,
                          color: const Color(0x800c0d34),
                          letterSpacing: 1.5,
                          height: 2,
                        ),
                        textAlign: TextAlign.center,
                      ), // Adobe XD layer: 'Hoxton Woven Jacket' (text)
                      Text(
                        'Hoxton Woven Jacket',
                        style: TextStyle(
                          fontFamily: 'SFProDisplay-Semibold',
                          fontSize: 28,
                          color: const Color(0xff0c0d34),
                        ),
                        textAlign: TextAlign.center,
                      ), // Adobe XD layer: '$39.99' (text)
                      Text(
                        '\Rs. 390',
                        style: TextStyle(
                          fontFamily: 'SFProDisplay-Semibold',
                          fontSize: 28,
                          color: const Color(0xff2cb9b0),
                        ),
                        textAlign: TextAlign.center,
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: width / 10),
                        child: Text(
                          'Step out in a street-ready look with this men\'s Hoxton Woven Tracksuit from Nike.\n\nIn a blue colourway, this loose-fit suit is made from lightweight taffeta fabric with a knit mesh lining for a breathable feel.',
                          style: TextStyle(
                            fontFamily: 'SFProDisplay-Regular',
                            fontSize: 16,
                            color: const Color(0x800c0d34),
                            height: 1.5,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),

                      Text(
                        'Select your size',
                        style: TextStyle(
                          fontFamily: 'SFProDisplay-Semibold',
                          fontSize: 18,
                          color: const Color(0xff0c0d34),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        width: width / 1.3,
                        // color: Colors.amber,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Shirtsize(
                              size: 'S',
                              isActive: false,
                            ),
                            Shirtsize(
                              size: 'M',
                              isActive: true,
                            ),
                            Shirtsize(
                              size: 'L',
                              isActive: true,
                            ),
                            Shirtsize(
                              size: 'XL',
                              isActive: false,
                            ),
                            Shirtsize(
                              size: 'XXL',
                              isActive: false,
                            )
                          ],
                        ),
                      ),

                      Text(
                        'More colors available',
                        style: TextStyle(
                          fontFamily: 'SFProDisplay-Semibold',
                          fontSize: 18,
                          color: const Color(0xff0c0d34),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        width: width,
                        // color: Colors.red,
                        height: width / 3,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            ProductCard(),
                            ProductCard(),
                            ProductCard(),
                            ProductCard()
                          ],
                        ),
                      ),
                      Container(
                        height: height / 19,
                        width: width / 1.1,
                        // color: Colors.green,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              //color: Colors.red,
                              height: height / 15,
                              width: width / 2,
                              child: PeopleRow(),
                            ),
                            Text.rich(
                              TextSpan(
                                style: TextStyle(
                                  fontFamily: 'SFProDisplay-Semibold',
                                  fontSize: width / 45,
                                  color: const Color(0xff0c0d34),
                                  height: 1.2727272727272727,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Mike Peter',
                                  ),
                                  TextSpan(
                                    text: ' and ',
                                    style: TextStyle(
                                      fontFamily: 'SFProDisplay-Regular',
                                    ),
                                  ),
                                  TextSpan(
                                    text: '12 others\n',
                                  ),
                                  TextSpan(
                                    text: 'like this outfit',
                                    style: TextStyle(
                                      fontFamily: 'SFProDisplay-Regular',
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // color: Colors.red,
                        width: width / 4,
                        height: height / 50,
                        child: Center(
                          child: Iconsswipeline(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.all(width / 40),
                  color: const Color(0xFFC9E9E7),
                  height: width / 10,
                  width: width,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Iconsiconback(
                          onTap: () => Navigator.of(context).pop(),
                        ),
                        Iconsiconbag(
                          itemsCount: "12",
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ShoppingCart(),
                            ),
                          ),
                        )
                      ]),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(width / 15),
            height: height / 13,
            width: width,
            // color: Colors.orange,
            child: DelayedAnimation(
              delay: 500,
              child: SliderButtonCus(
                text: "Swipe to add to bag",
              ),
            ),
          )
        ],
      ),
    );
  }
}
