import 'package:flutter/material.dart';

class ItemsCategories extends StatelessWidget {
  final String title;
  final Color color;
  const ItemsCategories({@required this.title, @required this.color, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(width / 40),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: width / 5,
                height: width / 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width / 3),
                  border:
                      Border.all(width: 2.0, color: const Color(0xffffdddd)),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: width / 6,
                  height: width / 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width / 3),
                    color: color,
                  ),
                ),
              ),
            ],
          ),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'SFProDisplay-Medium',
              fontSize: 12,
              color: const Color(0xff0c0d34),
              height: 2,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
