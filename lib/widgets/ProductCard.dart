import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.all(width / 30),
      width: width / 4,
      height: width / 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(width / 40),
        ),
        color: Color(0xFF2CB9B0),
      ),
    );
  }
}
