import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outfitr/Iconsiconbag.dart';
import 'package:outfitr/widgets/ButtomSheetSiw.dart';
import 'package:outfitr/widgets/ButtonsPrimarybutton.dart';
import 'package:outfitr/Iconsswipeline.dart';
import 'package:outfitr/widgets/Iconsiconback.dart';
import 'package:outfitr/widgets/ShirtSize.dart';
import 'package:outfitr/widgets/SlidableProductCard.dart';
import 'package:outfitr/widgets/SliderButtonCus.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key key}) : super(key: key);

  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  PersistentBottomSheetController x;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    showbuttomsheet() {
      showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          color: Color(0xFF737373),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(width / 10),
                topRight: Radius.circular(width / 10),
              ),
            ),
            height: height / 3,
            width: width,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: width / 30,
                  left: width / 2.6,
                  child: Container(
                    // color: Colors.red,
                    width: width / 4,
                    height: height / 50,
                    child: Center(
                      child: Iconsswipeline(),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    //color: Colors.red,
                    height: height / 3.6,
                    width: width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Change item size',
                          style: TextStyle(
                            fontFamily: 'SFProDisplay-Semibold',
                            fontSize: 24,
                            color: const Color(0xff0c0d34),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
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
                         SliderButtonCus(
                           text: "Swipe to apply",
                         )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

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
                      color: Colors.white,
                      itemsCount: "12",
                      onTap: () => {}/* Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => FavoriteOutfit(),
                        ),
                      ), */
                    )
                  ],
                ),
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
              bottom: width / 4,
              left: width / 2.6,
              child: Container(
                // color: Colors.red,
                width: width / 4,
                height: height / 50,
                child: Center(
                  child: Iconsswipeline(),
                ),
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
                          ),
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
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.3),
              child: Container(
                margin: EdgeInsets.all(15.0),
                //color: Colors.red,
                height: width,
                width: width,
                child: ListView(
                  children: <Widget>[
                    SlidableProductCard(
                      amount: '2',
                      name: 'Short Sleeve \nOrganic Top',
                      price: '329',
                      sise: Text(
                        'M, L',
                        style: TextStyle(
                          fontFamily: 'SFProDisplay-Semibold',
                          fontSize: 12,
                          color: const Color(0xff2cb9b0),
                          height: 2,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SlidableProductCard(
                      amount: '4',
                      name: 'Crew Neck\nSweatshirt',
                      price: '33',
                      sise: GestureDetector(
                        onTap: () {
                          showbuttomsheet();
                        },
                        child: Text(
                          'M, L',
                          style: TextStyle(
                            fontFamily: 'SFProDisplay-Semibold',
                            fontSize: 12,
                            color: const Color(0xff2cb9b0),
                            height: 2,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SlidableProductCard(
                      amount: '8',
                      name: 'No Broken \nHearts Shirt',
                      price: '3299',
                      sise: Text(
                        'M, L',
                        style: TextStyle(
                          fontFamily: 'SFProDisplay-Semibold',
                          fontSize: 12,
                          color: const Color(0xff2cb9b0),
                          height: 2,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GrabSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20.0,
            color: Colors.black.withOpacity(0.2),
          )
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 100.0,
            height: 10.0,
            margin: EdgeInsets.only(top: 15.0),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
