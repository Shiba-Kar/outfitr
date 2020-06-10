import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:outfitr/widgets/ProductCard.dart';

class SlidableProductCard extends StatefulWidget {
  final String name;
  final String price;
  final String amount;
  final Widget sise; 
  const SlidableProductCard({this.amount, this.price, this.name, this.sise,Key key})
      : super(key: key);

  @override
  _SlidableProductCardState createState() => _SlidableProductCardState();
}

class _SlidableProductCardState extends State<SlidableProductCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      child: Slidable(
        
        actionPane: SlidableDrawerActionPane(),
        actionExtentRatio: 0.37,
        child: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: ProductCard(),
              ),
              Container(
                width: width / 4,
                // color: Colors.red,
                height: width / 4.7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Size:',
                          style: TextStyle(
                            fontFamily: 'SFProDisplay-Regular',
                            fontSize: 12,
                            color: const Color(0xff0c0d34),
                            height: 2,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(width: width / 30),
                        widget.sise
                      ],
                    ),
                    Text(
                      '${widget.name}',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Semibold',
                        fontSize: 16,
                        color: const Color(0xff0c0d34),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      '\Rs.${widget.price}',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Semibold',
                        fontSize: 18,
                        color: const Color(0xff2cb9b0),
                      ),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
              ),
              Container(
                width: width / 5,
                height: width / 5,
                //color: Colors.orange,
                child: Center(
                  child: Container(
                    width: width / 11,
                    height: width / 11,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(width / 2),
                      ),
                      color: const Color(0xFF0C0D34),
                    ),
                    child: Center(
                      child: Text(
                        'x${widget.amount}',
                        style: TextStyle(
                          fontFamily: 'SFProDisplay-Semibold',
                          fontSize: width / 25,
                          color: const Color(0xffffffff),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        secondaryActions: <Widget>[
          Container(
            height: width / 4,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Color(0xff2cb9b0).withOpacity(0.3),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: width / 11,
                  height: width / 11,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(width / 2),
                    ),
                    color: Color(0XFF2CB9B0),
                  ),
                  child: Center(
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Semibold',
                        fontSize: width / 25,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  width: width / 11,
                  height: width / 11,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(width / 2)),
                    color: Color(0xFFEB5B90),
                  ),
                  child: Center(
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Semibold',
                        fontSize: width / 25,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
        actions: <Widget>[
          Container(
            height: width / 4,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFEB5B90).withOpacity(0.2), Colors.white],
              ),
            ),
            child: Center(
              child: GestureDetector(
                onTap: () => {},
                child: Text(
                  "Remove",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
