import 'package:flutter/material.dart';

class ItemsCategories extends StatelessWidget {
  final String title;
  final Color color;
  const ItemsCategories({@required this.title, @required this.color, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(width / 200),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            //  color: Colors.green,
            height: width / 4,
            width: width / 4,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    width: width / 5,
                    height: width / 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width / 3),
                      border: Border.all(
                          width: 2.0, color: color),
                    ),
                  ),
                ),
                Center(
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
          ),
          Text(
            title,
            style: TextStyle(
                fontFamily: 'SFProDisplay-Medium',
                fontSize: width /40,
                color: const Color(0xff0c0d34),
                height: height / 900),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
